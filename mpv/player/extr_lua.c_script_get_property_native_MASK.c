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
typedef  int /*<<< orphan*/  mpv_node ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_NODE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);
    const char *name = FUNC2(L, 1);
    FUNC6(L, 2);
    void *tmp = FUNC5(L);

    mpv_node node;
    int err = FUNC8(ctx->client, name, MPV_FORMAT_NODE, &node);
    if (err >= 0) {
        FUNC0(tmp, &node);
        FUNC9(L, &node);
        FUNC10(tmp);
        return 1;
    }
    FUNC4(L, 2);
    FUNC3(L, FUNC7(err));
    return 2;
}