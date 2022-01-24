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
struct mpv_node {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct mpv_node*) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct mpv_node*,int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mpv_node*,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);
    FUNC6(L, 2);
    struct mpv_node node;
    struct mpv_node result;
    void *tmp = FUNC5(L);
    FUNC4(tmp, &node, L, 1);
    int err = FUNC7(ctx->client, &node, &result);
    if (err >= 0) {
        FUNC0(tmp, &result);
        FUNC9(L, &result);
        FUNC10(tmp);
        return 1;
    }
    FUNC3(L, 2);
    FUNC2(L, FUNC8(err));
    return 2;
}