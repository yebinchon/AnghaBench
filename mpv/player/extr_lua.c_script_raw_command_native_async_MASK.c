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
typedef  int /*<<< orphan*/  uint64_t ;
struct script_ctx {int /*<<< orphan*/  client; } ;
struct mpv_node {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mpv_node*,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);
    uint64_t id = FUNC2(L, 1);
    struct mpv_node node;
    void *tmp = FUNC4(L);
    FUNC3(tmp, &node, L, 2);
    int res = FUNC5(ctx->client, id, &node);
    FUNC6(tmp);
    return FUNC0(L, res);
}