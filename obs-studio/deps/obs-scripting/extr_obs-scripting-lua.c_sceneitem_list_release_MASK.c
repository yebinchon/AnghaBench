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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int item ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int obs_sceneitem_t ; 

__attribute__((used)) static int FUNC5(lua_State *script)
{
	size_t count = FUNC3(script, 1);
	for (size_t i = 0; i < count; i++) {
		obs_sceneitem_t *item;

		FUNC2(script, 1, (int)i + 1);
		FUNC0(obs_sceneitem_t, -1, &item);
		FUNC1(script, 1);

		FUNC4(item);
	}
	return 0;
}