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
struct script_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct script_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  report_handler ; 
 int /*<<< orphan*/  script__run_script ; 

__attribute__((used)) static int FUNC6(js_State *J, struct script_ctx *ctx)
{
    if (FUNC5(J))
        return 1;
    FUNC3(J, ctx);
    FUNC4(J, report_handler);
    FUNC1(J, script__run_script, "run_script", 0);
    FUNC2(J);  // 'this' for script__run_script
    FUNC0(J);
    return 0;
}