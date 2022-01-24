#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  in_buffers; int /*<<< orphan*/  in_size; int /*<<< orphan*/  ib; int /*<<< orphan*/  out_buffers; int /*<<< orphan*/  out_size; int /*<<< orphan*/  ob; } ;
struct TYPE_7__ {int /*<<< orphan*/  obqueue; int /*<<< orphan*/  ibqueue; int /*<<< orphan*/  state; int /*<<< orphan*/  event; int /*<<< orphan*/ * vmt; } ;
typedef  TYPE_1__ QMKUSBDriver ;
typedef  TYPE_2__ QMKUSBConfig ;

/* Variables and functions */
 int /*<<< orphan*/  QMKUSB_STOP ; 
 int /*<<< orphan*/  ibnotify ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  obnotify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmt ; 

void FUNC3(QMKUSBDriver *qmkusbp, const QMKUSBConfig *config) {
    qmkusbp->vmt = &vmt;
    FUNC2(&qmkusbp->event);
    qmkusbp->state = QMKUSB_STOP;
    // Note that the config uses the USB direction naming
    FUNC0(&qmkusbp->ibqueue, true, config->ob, config->out_size, config->out_buffers, ibnotify, qmkusbp);
    FUNC1(&qmkusbp->obqueue, true, config->ib, config->in_size, config->in_buffers, obnotify, qmkusbp);
}