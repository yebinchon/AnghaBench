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
struct lua_obs_callback {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*) ; 
 int /*<<< orphan*/  modified_callback ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int obs_property_t ; 
 int p ; 

__attribute__((used)) static int FUNC4(lua_State *script)
{
	obs_property_t *p;

	if (!FUNC2(obs_property_t, 1, &p))
		return 0;
	if (!FUNC1(script, 2))
		return 0;

	struct lua_obs_callback *cb = FUNC0(script, 2);
	FUNC3(p, modified_callback, cb);
	return 0;
}