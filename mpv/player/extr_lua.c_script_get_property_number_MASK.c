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
struct script_ctx {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_DOUBLE ; 
 struct script_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    struct script_ctx *ctx = FUNC0(L);
    const char *name = FUNC1(L, 1);

    // Note: the mpv core will (hopefully) convert INT64 to DOUBLE
    double result = 0;
    int err = FUNC6(ctx->client, name, MPV_FORMAT_DOUBLE, &result);
    if (err >= 0) {
        FUNC2(L, result);
        return 1;
    } else {
        FUNC4(L, 2);
        FUNC3(L, FUNC5(err));
        return 2;
    }
}