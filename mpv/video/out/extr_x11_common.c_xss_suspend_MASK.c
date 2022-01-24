#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 scalar_t__ True ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Display *mDisplay, Bool suspend)
{
    int event, error, major, minor;
    if (FUNC0(mDisplay, &event, &error) != True ||
        FUNC1(mDisplay, &major, &minor) != True)
        return 0;
    if (major < 1 || (major == 1 && minor < 1))
        return 0;
    FUNC2(mDisplay, suspend);
    return 1;
}