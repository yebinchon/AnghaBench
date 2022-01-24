#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* location; } ;
typedef  TYPE_1__ ACCESS_DESCRIPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(int testcase)
{
    ACCESS_DESCRIPTION *ad = FUNC1();
    int ret = 0;

    if (!FUNC4(ad))
        goto err;

    switch (testcase) {
    case 0:     /* no change */
        break;
    case 1:     /* check and release current location */
        if (!FUNC4(ad->location))
            goto err;
        FUNC2(ad->location);
        ad->location = NULL;
        break;
    case 2:     /* replace current location */
        FUNC2(ad->location);
        ad->location = FUNC3();
        if (!FUNC4(ad->location))
            goto err;
        break;
    }
    FUNC0(ad);
    ret = 1;
err:
    return ret;
}