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
struct fn_entry {scalar_t__ name; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(lua_State *L, char *module,
                                 const struct fn_entry *e)
{
    FUNC3(L, module); // modtable
    for (int n = 0; e[n].name; n++) {
        FUNC1(L, e[n].fn, 0); // modtable fn
        FUNC2(L, -2, e[n].name); // modtable
    }
    FUNC0(L, 1); // -
}