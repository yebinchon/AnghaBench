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
struct TYPE_3__ {scalar_t__ (* init ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONF_METHOD ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CONF *FUNC3(CONF_METHOD *meth)
{
    CONF *ret;

    ret = FUNC1(sizeof(*ret));
    if (ret != NULL)
        if (meth->init(ret) == 0) {
            FUNC0(ret);
            ret = NULL;
        }
    return ret;
}