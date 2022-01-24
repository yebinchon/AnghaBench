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
typedef  int /*<<< orphan*/  swig_type_info ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,char const*,char*,char const*) ; 

bool FUNC4(lua_State *script, const char *type, int lua_idx,
			void *libobs_out, const char *id, const char *func,
			int line)
{
	swig_type_info *info = FUNC2(script, type);
	if (info == NULL) {
		FUNC3("%s:%d: SWIG could not find type: %s%s%s", func, line,
		     id ? id : "", id ? "::" : "", type);
		return false;
	}

	int ret = FUNC0(script, lua_idx, libobs_out, info, 0);
	if (!FUNC1(ret)) {
		FUNC3("%s:%d: SWIG failed to convert lua object to obs "
		     "object: %s%s%s",
		     func, line, id ? id : "", id ? "::" : "", type);
		return false;
	}

	return true;
}