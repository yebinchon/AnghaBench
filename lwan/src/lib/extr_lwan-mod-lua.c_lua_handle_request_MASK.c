#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lwan_response {int /*<<< orphan*/  mime_type; } ;
struct lwan_request {TYPE_1__* conn; } ;
struct lwan_lua_state {int /*<<< orphan*/  L; } ;
struct lwan_lua_priv {int /*<<< orphan*/  default_type; } ;
struct cache {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Integer ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_2__ {int /*<<< orphan*/  coro; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_CORO_YIELD ; 
 int HTTP_INTERNAL_ERROR ; 
 int HTTP_NOT_FOUND ; 
 int HTTP_OK ; 
#define  LUA_YIELD 128 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cache*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lwan_request*) ; 
 struct cache* FUNC4 (struct lwan_lua_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct lwan_request*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum lwan_http_status FUNC13(struct lwan_request *request,
                                                struct lwan_response *response,
                                                void *instance)
{
    struct lwan_lua_priv *priv = instance;

    struct cache *cache = FUNC4(priv);
    if (FUNC0(!cache))
        return HTTP_INTERNAL_ERROR;

    struct lwan_lua_state *state =
        (struct lwan_lua_state *)FUNC1(
            cache, request->conn->coro, "");
    if (FUNC0(!state))
        return HTTP_NOT_FOUND;

    lua_State *L = FUNC12(state->L, request->conn->coro);
    if (FUNC0(!L))
        return HTTP_INTERNAL_ERROR;

    if (FUNC0(!FUNC3(L, request)))
        return HTTP_NOT_FOUND;

    int n_arguments = 1;
    FUNC10(L, request);
    response->mime_type = priv->default_type;
    while (true) {
        switch (FUNC7(L, n_arguments)) {
        case LUA_YIELD:
            FUNC2(request->conn->coro, CONN_CORO_YIELD);
            n_arguments = 0;
            break;
        case 0:
            if (FUNC5(L, -1))
                return HTTP_OK;

            if (FUNC6(L, -1)) {
                lua_Integer code = FUNC8(L, -1);

                if (code >= 100 && code <= 999)
                    return (enum lwan_http_status)code;
            }

            return HTTP_INTERNAL_ERROR;
        default:
            FUNC11("Error from Lua script: %s", FUNC9(L, -1));
            return HTTP_INTERNAL_ERROR;
        }
    }
}