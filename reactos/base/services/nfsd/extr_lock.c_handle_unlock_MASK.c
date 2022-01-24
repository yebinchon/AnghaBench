#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned char* buf; scalar_t__ buf_len; scalar_t__ count; } ;
typedef  TYPE_3__ unlock_upcall_args ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  stateid_arg ;
struct TYPE_13__ {TYPE_3__ unlock; } ;
struct TYPE_16__ {TYPE_5__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_4__ nfs41_upcall ;
struct TYPE_14__ {int /*<<< orphan*/  lock; } ;
struct TYPE_17__ {TYPE_2__ locks; int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_5__ nfs41_open_state ;
struct TYPE_18__ {scalar_t__ offset; scalar_t__ length; } ;
typedef  TYPE_6__ nfs41_lock_state ;
typedef  int /*<<< orphan*/  LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_BAD_NET_RESP ; 
 int ERROR_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFS4_UINT64_MAX ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ FUNC7 (unsigned char**,scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC8(nfs41_upcall *upcall)
{
    nfs41_lock_state input;
    stateid_arg stateid;
    unlock_upcall_args *args = &upcall->args.unlock;
    nfs41_open_state *state = upcall->state_ref;
    unsigned char *buf = args->buf;
    uint32_t buf_len = args->buf_len;
    uint32_t i;
    int status = NO_ERROR;

    for (i = 0; i < args->count; i++) {
        if (FUNC7(&buf, &buf_len, &input.offset, sizeof(LONGLONG))) break;
        if (FUNC7(&buf, &buf_len, &input.length, sizeof(LONGLONG))) break;

        /* do the same translation as LOCK, or the ranges won't match */
        if (input.length >= NFS4_UINT64_MAX - input.offset)
            input.length = NFS4_UINT64_MAX;

        /* search for the range to unlock, and remove if delegated */
        status = FUNC5(state, &input);
        if (status != ERROR_LOCKED)
            continue;

        FUNC0(&state->locks.lock);
        FUNC2(state, &stateid);

        status = FUNC3(state->session, &state->file,
            input.offset, input.length, &stateid);

        FUNC6(state, &stateid, &input);
        FUNC1(&state->locks.lock);

        status = FUNC4(status, ERROR_BAD_NET_RESP);
    }
    return status;
}