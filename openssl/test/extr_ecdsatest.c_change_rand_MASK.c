#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fake_rand ; 
 int /*<<< orphan*/  fbytes ; 
 TYPE_1__* old_rand ; 

__attribute__((used)) static int FUNC4(void)
{
    /* save old rand method */
    if (!FUNC2(old_rand = FUNC0()))
        return 0;

    fake_rand = *old_rand;
    /* use own random function */
    fake_rand.bytes = fbytes;
    /* set new RAND_METHOD */
    if (!FUNC3(FUNC1(&fake_rand)))
        return 0;
    return 1;
}