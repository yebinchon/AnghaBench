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
 int /*<<< orphan*/  GET_FILE_OBJ ; 
#define  VFS_SEEK_CUR 130 
#define  VFS_SEEK_END 129 
#define  VFS_SEEK_SET 128 
 int /*<<< orphan*/  argpos ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const* const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,long,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (lua_State *L)
{
  GET_FILE_OBJ;

  static const int mode[] = {VFS_SEEK_SET, VFS_SEEK_CUR, VFS_SEEK_END};
  static const char *const modenames[] = {"set", "cur", "end", NULL};
  if(!fd)
    return FUNC1(L, "open a file first");
  int op = FUNC0(L, argpos, "cur", modenames);
  long offset = FUNC2(L, ++argpos, 0);
  op = FUNC5(fd, offset, mode[op]);
  if (op < 0)
    FUNC4(L);  /* error */
  else
    FUNC3(L, FUNC6(fd));
  return 1;
}