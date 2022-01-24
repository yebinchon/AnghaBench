#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  obqueue; int /*<<< orphan*/  ibqueue; } ;
typedef  TYPE_1__ QMKUSBDriver ;

/* Variables and functions */
 int /*<<< orphan*/  CHN_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(QMKUSBDriver *qmkusbp) {
    FUNC2(&qmkusbp->ibqueue);
    FUNC0(&qmkusbp->ibqueue);
    FUNC3(&qmkusbp->obqueue);
    FUNC0(&qmkusbp->obqueue);
    FUNC1(qmkusbp, CHN_CONNECTED);
    (void)FUNC4(qmkusbp);
}