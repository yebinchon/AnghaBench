#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stateid_arg ;
struct TYPE_10__ {int /*<<< orphan*/  ctime; TYPE_3__* state; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ setattr_upcall_args ;
struct TYPE_11__ {int /*<<< orphan*/  lock; scalar_t__ pnfs_last_offset; int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_3__ nfs41_open_state ;
struct TYPE_9__ {int count; int /*<<< orphan*/ * arr; } ;
struct TYPE_12__ {int /*<<< orphan*/  change; scalar_t__ size; TYPE_1__ attrmask; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ nfs41_file_info ;
struct TYPE_13__ {scalar_t__ QuadPart; } ;
typedef  TYPE_5__* PLARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FATTR4_WORD0_SIZE ; 
 int /*<<< orphan*/  OPEN_DELEGATE_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(setattr_upcall_args *args)
{
    nfs41_file_info info = { 0 };
    stateid_arg stateid;
    /* note: this is called with either FILE_END_OF_FILE_INFO or
     * FILE_ALLOCATION_INFO, both of which contain a single LARGE_INTEGER */
    PLARGE_INTEGER size = (PLARGE_INTEGER)args->buf;
    nfs41_open_state *state = args->state;
    int status;

    /* break read delegations before SETATTR */
    FUNC3(state->session, &state->file,
        OPEN_DELEGATE_READ, FALSE);

    FUNC4(state, &stateid);

    info.size = size->QuadPart;
    info.attrmask.count = 1;
    info.attrmask.arr[0] = FATTR4_WORD0_SIZE;

    FUNC2(2, "calling setattr() with size=%lld\n", info.size);
    status = FUNC5(state->session, &state->file, &stateid, &info);
    if (status) {
        FUNC2(1, "nfs41_setattr() failed with error %s.\n",
            FUNC6(status));
        goto out;
    }

    /* update the last offset for LAYOUTCOMMIT */
    FUNC0(&state->lock);
    state->pnfs_last_offset = info.size ? info.size - 1 : 0;
    FUNC1(&state->lock);
    args->ctime = info.change;
out:
    return status = FUNC7(status, ERROR_NOT_SUPPORTED);
}