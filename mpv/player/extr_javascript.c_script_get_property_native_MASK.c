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
typedef  int /*<<< orphan*/  mpv_node ;
typedef  int /*<<< orphan*/  mpv_handle ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_NODE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(js_State *J, void *af)
{
    const char *name = FUNC1(J, 1);
    mpv_handle *h = FUNC0(J);
    mpv_node *presult_node = FUNC3(af);
    int e = FUNC2(h, name, MPV_FORMAT_NODE, presult_node);
    if (!FUNC4(J, e, 2))
        FUNC5(J, presult_node);
}