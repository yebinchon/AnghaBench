
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int stateid_arg ;
struct TYPE_10__ {int ctime; TYPE_3__* state; int buf; } ;
typedef TYPE_2__ setattr_upcall_args ;
struct TYPE_11__ {int lock; scalar_t__ pnfs_last_offset; int file; int session; } ;
typedef TYPE_3__ nfs41_open_state ;
struct TYPE_9__ {int count; int * arr; } ;
struct TYPE_12__ {int change; scalar_t__ size; TYPE_1__ attrmask; int member_0; } ;
typedef TYPE_4__ nfs41_file_info ;
struct TYPE_13__ {scalar_t__ QuadPart; } ;
typedef TYPE_5__* PLARGE_INTEGER ;


 int AcquireSRWLockExclusive (int *) ;
 int ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int FATTR4_WORD0_SIZE ;
 int OPEN_DELEGATE_READ ;
 int ReleaseSRWLockExclusive (int *) ;
 int dprintf (int,char*,scalar_t__) ;
 int nfs41_delegation_return (int ,int *,int ,int ) ;
 int nfs41_open_stateid_arg (TYPE_3__*,int *) ;
 int nfs41_setattr (int ,int *,int *,TYPE_4__*) ;
 scalar_t__ nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;

__attribute__((used)) static int handle_nfs41_set_size(setattr_upcall_args *args)
{
    nfs41_file_info info = { 0 };
    stateid_arg stateid;


    PLARGE_INTEGER size = (PLARGE_INTEGER)args->buf;
    nfs41_open_state *state = args->state;
    int status;


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_READ, FALSE);

    nfs41_open_stateid_arg(state, &stateid);

    info.size = size->QuadPart;
    info.attrmask.count = 1;
    info.attrmask.arr[0] = FATTR4_WORD0_SIZE;

    dprintf(2, "calling setattr() with size=%lld\n", info.size);
    status = nfs41_setattr(state->session, &state->file, &stateid, &info);
    if (status) {
        dprintf(1, "nfs41_setattr() failed with error %s.\n",
            nfs_error_string(status));
        goto out;
    }


    AcquireSRWLockExclusive(&state->lock);
    state->pnfs_last_offset = info.size ? info.size - 1 : 0;
    ReleaseSRWLockExclusive(&state->lock);
    args->ctime = info.change;
out:
    return status = nfs_to_windows_error(status, ERROR_NOT_SUPPORTED);
}
