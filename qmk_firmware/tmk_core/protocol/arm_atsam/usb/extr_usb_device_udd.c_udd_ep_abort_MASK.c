#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int busy; int /*<<< orphan*/  nb_trans; int /*<<< orphan*/  (* call_trans ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ udd_ep_job_t ;
typedef  int /*<<< orphan*/  udd_ep_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  UDD_EP_TRANSFER_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(udd_ep_id_t ep) {
    udd_ep_job_t *ptr_job;

    FUNC2(&usb_device, ep);

    /* Job complete then call callback */
    ptr_job = FUNC1(ep);
    if (!ptr_job->busy) {
        return;
    }
    ptr_job->busy = false;
    if (NULL != ptr_job->call_trans) {
        /* It can be a Transfer or stall callback */
        ptr_job->call_trans(UDD_EP_TRANSFER_ABORT, ptr_job->nb_trans, ep);
    }
}