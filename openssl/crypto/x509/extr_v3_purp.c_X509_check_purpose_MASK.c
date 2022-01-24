#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* check_purpose ) (TYPE_1__ const*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ X509_PURPOSE ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(X509 *x, int id, int ca)
{
    int idx;
    const X509_PURPOSE *pt;

    FUNC3(x);

    /* Return if side-effect only call */
    if (id == -1)
        return 1;
    idx = FUNC1(id);
    if (idx == -1)
        return -1;
    pt = FUNC0(idx);
    return pt->check_purpose(pt, x, ca);
}