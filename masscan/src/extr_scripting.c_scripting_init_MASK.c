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
struct lua_State {int dummy; } ;
struct TYPE_2__ {char* name; struct lua_State* L; } ;
struct Masscan {TYPE_1__ scripting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int LUA_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lua_State*,char const*) ; 
 struct lua_State* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lua_State*) ; 
 int /*<<< orphan*/  FUNC5 (struct lua_State*) ; 
 int FUNC6 (struct lua_State*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lua_State*,int) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Masscan*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(struct Masscan *masscan)
{
    int version;
    struct lua_State *L;
    const char *filename = masscan->scripting.name;
    int x;

    
    if (filename == 0 || filename[0] == '\0') {
        FUNC0(0, "%s: no script specified, use --script option\n", "SCRIPTING");
        FUNC1(1);
    }
    
    /* Dynamically link the library */
    FUNC10();
    
    /* Test to see if the loading was successful */
    version = (int)*FUNC8(0);
    FUNC0(1, "Lua version = %d\n", version);
    if (version != 503 && version != 502) {
        FUNC0(0, "Unable to load Lua library\n");
        FUNC1(1);
    }
    
    /*
     * Create a Lua VM
     */
    L = FUNC3();
    FUNC4(L);
    masscan->scripting.L = L;
    
    /*
     * TODO: Sanbox stuff
     */
    /* We need to do a bunch of sandboxing here to prevent hostile or badly
     * written scripts from disrupting the system */
    
    /*
     * Create the Masscan object
     */
    FUNC9(masscan);
    
    /*
     * Load the script. This will verify the syntax.
     */
    x = FUNC2(L, filename);
    if (x != LUA_OK) {
        FUNC0(0, "%s error loading: %s: %s\n", "SCRIPTING:", filename, FUNC7(L, -1));
        FUNC5(L);
        FUNC1(1);
    }
    
    /*
     * Lua: Start running the script. At this stage, the "onConnection()" function doesn't
     * run. Instead, it's registered as a global function to be called later.
     */
    FUNC0(1, "%s running script: %s\n", "SCRIPTING:", filename);
    x = FUNC6(L, 0, 0, 0);
    if (x != LUA_OK) {
        FUNC0(0, "%s error running: %s: %s\n", "SCRIPTING:", filename, FUNC7(L, -1));
        FUNC5(L);
        FUNC1(1);
    }

}