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
 scalar_t__ FUNC0 (char**,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mpv_node*,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 char* FUNC6 (void*,char*) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    void *tmp = FUNC4(L);
    struct mpv_node node;
    FUNC3(tmp, &node, L, 1);
    char *dst = FUNC6(tmp, "");
    if (FUNC0(&dst, &node) >= 0) {
        FUNC2(L, dst);
        FUNC1(L);
    } else {
        FUNC1(L);
        FUNC2(L, "error");
    }
    FUNC5(tmp);
    return 2;
}