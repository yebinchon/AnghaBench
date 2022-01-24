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
struct mpv_node {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,struct mpv_node*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 char* FUNC10 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(lua_State *L)
{
    FUNC7(L, 2);
    void *tmp = FUNC6(L);
    char *text = FUNC10(tmp, FUNC2(L, 1));
    bool trail = FUNC5(L, 2);
    bool ok = false;
    struct mpv_node node;
    if (FUNC0(tmp, &node, &text, 32) >= 0) {
        FUNC1(&text);
        ok = !text[0] || trail;
    }
    if (ok) {
        FUNC8(L, &node);
        FUNC3(L);
    } else {
        FUNC3(L);
        FUNC4(L, "error");
    }
    FUNC4(L, text);
    FUNC9(tmp);
    return 3;
}