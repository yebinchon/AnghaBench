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
 int MPV_FORMAT_OSD_STRING ; 
 int MPV_FORMAT_STRING ; 
 struct script_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,int,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(lua_State *L)
{
    struct script_ctx *ctx = FUNC0(L);
    const char *name = FUNC1(L, 1);
    int type = FUNC5(L, FUNC6(1))
               ? MPV_FORMAT_OSD_STRING : MPV_FORMAT_STRING;

    char *result = NULL;
    int err = FUNC8(ctx->client, name, type, &result);
    if (err >= 0) {
        FUNC3(L, result);
        FUNC9(result);
        return 1;
    } else {
        if (FUNC2(L, 2) && type == MPV_FORMAT_OSD_STRING) {
            FUNC3(L, "");
        } else {
            FUNC4(L, 2);
        }
        FUNC3(L, FUNC7(err));
        return 2;
    }
}