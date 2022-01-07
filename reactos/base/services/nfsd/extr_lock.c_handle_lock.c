
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int stateid_arg ;
struct TYPE_21__ {scalar_t__ length; scalar_t__ offset; void* acquired; int exclusive; int blocking; } ;
struct TYPE_16__ {TYPE_6__ lock; } ;
struct TYPE_18__ {TYPE_4__* state_ref; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
struct TYPE_17__ {int lock; } ;
struct TYPE_19__ {TYPE_2__ locks; int owner; int file; int session; } ;
typedef TYPE_4__ nfs41_open_state ;
struct TYPE_20__ {scalar_t__ offset; scalar_t__ length; int exclusive; } ;
typedef TYPE_5__ nfs41_lock_state ;
typedef TYPE_6__ lock_upcall_args ;


 int ERROR_BAD_NET_RESP ;
 int ERROR_FILE_INVALID ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int GetLastError () ;
 int LKLVL ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ NFS4_UINT64_MAX ;
 int NO_ERROR ;
 void* TRUE ;
 TYPE_5__* calloc (int,int) ;
 int dprintf (int ,char*,scalar_t__,...) ;
 int free (TYPE_5__*) ;
 int get_lock_type (int ,int ) ;
 int lock_stateid_arg (TYPE_4__*,int *) ;
 int nfs41_delegation_to_open (TYPE_4__*,void*) ;
 int nfs41_lock (int ,int *,int *,int const,scalar_t__,scalar_t__,int ,void*,int *) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;
 int open_lock_add (TYPE_4__*,int *,TYPE_5__*) ;
 scalar_t__ open_lock_delegate (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int handle_lock(nfs41_upcall *upcall)
{
    stateid_arg stateid;
    lock_upcall_args *args = &upcall->args.lock;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_lock_state *lock;
    const uint32_t type = get_lock_type(args->exclusive, args->blocking);
    int status = NO_ERROR;





    if (args->length >= NFS4_UINT64_MAX - args->offset)
        args->length = NFS4_UINT64_MAX;


    lock = calloc(1, sizeof(nfs41_lock_state));
    if (lock == ((void*)0)) {
        status = GetLastError();
        goto out;
    }
    lock->offset = args->offset;
    lock->length = args->length;
    lock->exclusive = args->exclusive;


    if (open_lock_delegate(state, lock)) {
        dprintf(LKLVL, "delegated lock { %llu, %llu }\n",
            lock->offset, lock->length);
        args->acquired = TRUE;
        goto out;
    }



    status = nfs41_delegation_to_open(state, TRUE);
    if (status) {
        status = ERROR_FILE_INVALID;
        goto out_free;
    }

    EnterCriticalSection(&state->locks.lock);

    lock_stateid_arg(state, &stateid);

    status = nfs41_lock(state->session, &state->file, &state->owner,
        type, lock->offset, lock->length, FALSE, TRUE, &stateid);
    if (status) {
        dprintf(LKLVL, "nfs41_lock failed with %s\n",
            nfs_error_string(status));
        status = nfs_to_windows_error(status, ERROR_BAD_NET_RESP);
        LeaveCriticalSection(&state->locks.lock);
        goto out_free;
    }


    open_lock_add(state, &stateid, lock);
    LeaveCriticalSection(&state->locks.lock);

    args->acquired = TRUE;
out:
    return status;

out_free:
    free(lock);
    goto out;
}
