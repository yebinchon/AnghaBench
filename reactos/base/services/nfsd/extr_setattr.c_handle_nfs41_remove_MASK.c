#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* state; } ;
typedef  TYPE_2__ setattr_upcall_args ;
struct TYPE_6__ {int /*<<< orphan*/  fileid; } ;
struct TYPE_9__ {TYPE_1__ fh; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_4__ file; int /*<<< orphan*/  parent; int /*<<< orphan*/  session; } ;
typedef  TYPE_3__ nfs41_open_state ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  OPEN_DELEGATE_WRITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(setattr_upcall_args *args)
{
    nfs41_open_state *state = args->state;
    int status;

    /* break any delegations and truncate before REMOVE */
    FUNC1(state->session, &state->file,
        OPEN_DELEGATE_WRITE, TRUE);

    status = FUNC2(state->session, &state->parent,
        &state->file.name, state->file.fh.fileid);
    if (status)
        FUNC0(1, "nfs41_remove() failed with error %s.\n",
            FUNC3(status));

    return FUNC4(status, ERROR_ACCESS_DENIED);
}