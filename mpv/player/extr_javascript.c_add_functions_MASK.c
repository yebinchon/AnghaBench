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
struct script_ctx {int /*<<< orphan*/  filename; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  main_fns ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  utils_fns ; 

__attribute__((used)) static void FUNC7(js_State *J, struct script_ctx *ctx)
{
    FUNC1(J, 0);
    FUNC0(J, "mp", main_fns);
    FUNC2(J, 0, "mp");  // + this mp
    FUNC0(J, "utils", utils_fns);

    FUNC4(J, FUNC6(ctx->client));
    FUNC5(J, -2, "script_name");

    FUNC4(J, ctx->filename);
    FUNC5(J, -2, "script_file");

    FUNC3(J, 2);  // leave the stack as we got it
}