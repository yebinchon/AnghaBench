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
 int /*<<< orphan*/  MPV_FORMAT_STRING ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(js_State *J, void *af)
{
    mpv_handle *h = FUNC1(J);
    char *res = NULL;
    int e = FUNC4(h, FUNC3(J, 1), MPV_FORMAT_STRING, &res);
    if (e >= 0)
        FUNC0(af, res);
    if (!FUNC5(J, e, 2))
        FUNC2(J, res);
}