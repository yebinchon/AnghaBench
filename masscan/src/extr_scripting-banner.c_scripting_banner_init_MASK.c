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
struct lua_State {int dummy; } ;
struct Banner1 {struct lua_State* L; } ;
typedef  int lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lua_State*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lua_State*,int,int) ; 
 scalar_t__ FUNC4 (struct lua_State*,int) ; 
 scalar_t__ FUNC5 (struct lua_State*,int) ; 
 scalar_t__ FUNC6 (struct lua_State*,int) ; 
 scalar_t__ FUNC7 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct Banner1*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct Banner1*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC11(struct Banner1 *b)
{
    struct lua_State *L = b->L;
    
    /* Kludge: this gets called prematurely, without scripting, so
     * just return */
    if (L == NULL)
        return 0;
    
    FUNC0(0, "SCRIPTING: banner init          \n");
    
    /*
     * Register TCP ports to run on
     */
    FUNC2(L, "setTcpPorts");
    if (FUNC5(L, -1)) {
        FUNC10(b, FUNC8(L, -1));
    } else if (FUNC4(L, -1)) {
        FUNC9(b, (int)FUNC7(L, -1));
    } else if (FUNC6(L, -1)) {
        lua_Integer n = FUNC1(L, -1);
        int i;
        for (i=1; i<=n; i++) {
            FUNC3(L, -1, i);
            if (FUNC5(L, -1)) {
                FUNC10(b, FUNC8(L, -1));
            } else if (FUNC4(L, -1)) {
                FUNC9(b, (int)FUNC7(L, -1));
            }
        }
    }
    
    return 0;
}