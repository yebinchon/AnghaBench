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
 size_t FS_OBJ_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  size_t len;
  const char *fname = FUNC1( L, 1, &len );
  const char *basename = FUNC3( fname );
  FUNC0(L, FUNC2(basename) <= FS_OBJ_NAME_LEN && FUNC2(fname) == len, 1, "filename invalid");
  FUNC4((char *)fname);
  return 0;
}