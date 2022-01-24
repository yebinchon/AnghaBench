#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  stateid_arg ;
struct TYPE_21__ {scalar_t__ length; scalar_t__ offset; void* acquired; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  blocking; } ;
struct TYPE_16__ {TYPE_6__ lock; } ;
struct TYPE_18__ {TYPE_4__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;
struct TYPE_17__ {int /*<<< orphan*/  lock; } ;
struct TYPE_19__ {TYPE_2__ locks; int /*<<< orphan*/  owner; int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_4__ nfs41_open_state ;
struct TYPE_20__ {scalar_t__ offset; scalar_t__ length; int /*<<< orphan*/  exclusive; } ;
typedef  TYPE_5__ nfs41_lock_state ;
typedef  TYPE_6__ lock_upcall_args ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_BAD_NET_RESP ; 
 int ERROR_FILE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  LKLVL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFS4_UINT64_MAX ; 
 int NO_ERROR ; 
 void* TRUE ; 
 TYPE_5__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,void*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC14(nfs41_upcall *upcall)
{
    stateid_arg stateid;
    lock_upcall_args *args = &upcall->args.lock;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_lock_state *lock;
    const uint32_t type = FUNC6(args->exclusive, args->blocking);
    int status = NO_ERROR;

    /* 18.10.3. Operation 12: LOCK - Create Lock
     * "To lock the file from a specific offset through the end-of-file
     * (no matter how long the file actually is) use a length field equal
     * to NFS4_UINT64_MAX." */
    if (args->length >= NFS4_UINT64_MAX - args->offset)
        args->length = NFS4_UINT64_MAX;

    /* allocate the lock state */
    lock = FUNC3(1, sizeof(nfs41_lock_state));
    if (lock == NULL) {
        status = FUNC1();
        goto out;
    }
    lock->offset = args->offset;
    lock->length = args->length;
    lock->exclusive = args->exclusive;

    /* if we hold a write delegation, handle the lock locally */
    if (FUNC13(state, lock)) {
        FUNC4(LKLVL, "delegated lock { %llu, %llu }\n",
            lock->offset, lock->length);
        args->acquired = TRUE; /* for cancel_lock() */
        goto out;
    }

    /* open_to_lock_owner4 requires an open stateid; if we
     * have a delegation, convert it to an open stateid */
    status = FUNC8(state, TRUE);
    if (status) {
        status = ERROR_FILE_INVALID;
        goto out_free;
    }

    FUNC0(&state->locks.lock);

    FUNC7(state, &stateid);

    status = FUNC9(state->session, &state->file, &state->owner,
        type, lock->offset, lock->length, FALSE, TRUE, &stateid);
    if (status) {
        FUNC4(LKLVL, "nfs41_lock failed with %s\n",
            FUNC10(status));
        status = FUNC11(status, ERROR_BAD_NET_RESP);
        FUNC2(&state->locks.lock);
        goto out_free;
    }

    /* save lock state with the open */
    FUNC12(state, &stateid, lock);
    FUNC2(&state->locks.lock);

    args->acquired = TRUE; /* for cancel_lock() */
out:
    return status;

out_free:
    FUNC5(lock);
    goto out;
}