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
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  af_CFunction ;

/* Variables and functions */
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  script__autofree ; 

__attribute__((used)) static void FUNC4(js_State *J, af_CFunction fn, const char *name,
                            int length)
{
    FUNC1(J, script__autofree, name, length);
    FUNC3(J);  // a prototype for the userdata object
    FUNC2(J, "af_fn", fn, NULL);  // uses a "af_fn" verification tag
    FUNC0(J, -2, "af_", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
}