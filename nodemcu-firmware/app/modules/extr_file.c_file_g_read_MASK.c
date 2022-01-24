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
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  char int16_t ;

/* Variables and functions */
 int LUAL_BUFFERSIZE ; 
 int VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static int FUNC7( lua_State* L, int n, int16_t end_char, int fd )
{
  int i, j;
  luaL_Buffer b;
  char p[LUAL_BUFFERSIZE/2];

  if(!fd)
    return FUNC2(L, "open a file first");

  FUNC1(L, &b);

  for (j = 0; j < n; j += sizeof(p)) {
    int nwanted = (n - j >= sizeof(p)) ? sizeof(p) : n - j;
    int nread   = FUNC6(fd, p, nwanted);

    if (nread == VFS_RES_ERR || nread == 0) {
      FUNC4(L);
      return 1;
    }

    for (i = 0; i < nread; ++i) {
      FUNC0(&b, p[i]);
      if (p[i] == end_char) {
        FUNC5(fd, -nread + j + i + 1, VFS_SEEK_CUR); //reposition after end char found
        nread = 0;   // force break on outer loop
        break;
      }
    }

    if (nread < nwanted)
      break;
  }
  FUNC3(&b);
  return 1;
}