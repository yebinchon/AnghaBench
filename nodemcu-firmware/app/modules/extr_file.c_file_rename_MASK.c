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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  size_t len;

  const char *oldname = FUNC1( L, 1, &len );
  const char *basename = FUNC4( oldname );
  FUNC0(L, FUNC3(basename) <= FS_OBJ_NAME_LEN && FUNC3(oldname) == len, 1, "filename invalid");

  const char *newname = FUNC1( L, 2, &len );
  basename = FUNC4( newname );
  FUNC0(L, FUNC3(basename) <= FS_OBJ_NAME_LEN && FUNC3(newname) == len, 2, "filename invalid");

  if(0 <= FUNC5( oldname, newname )){
    FUNC2(L, 1);
  } else {
    FUNC2(L, 0);
  }
  return 1;
}