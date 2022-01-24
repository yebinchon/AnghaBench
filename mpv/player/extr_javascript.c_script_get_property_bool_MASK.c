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
typedef  int /*<<< orphan*/  mpv_handle ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_FLAG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
    int result;
    mpv_handle *h = FUNC0(J);
    int e = FUNC3(h, FUNC2(J, 1), MPV_FORMAT_FLAG, &result);
    if (!FUNC4(J, e, 2))
        FUNC1(J, result);
}