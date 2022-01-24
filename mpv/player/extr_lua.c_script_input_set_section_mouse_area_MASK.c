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
struct MPContext {int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct MPContext* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L)
{
    struct MPContext *mpctx = FUNC0(L);

    char *section = (char *)FUNC2(L, 1);
    int x0 = FUNC1(L, 2);
    int y0 = FUNC1(L, 3);
    int x1 = FUNC1(L, 4);
    int y1 = FUNC1(L, 5);
    FUNC3(mpctx->input, section, x0, y0, x1, y1);
    return 0;
}