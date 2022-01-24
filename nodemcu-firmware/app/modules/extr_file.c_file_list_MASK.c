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
typedef  int /*<<< orphan*/  vfs_dir ;
struct vfs_stat {int /*<<< orphan*/  name; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ VFS_RES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct vfs_stat*) ; 

__attribute__((used)) static int FUNC14( lua_State* L )
{
  vfs_dir  *dir;
  const char *pattern;
  struct vfs_stat stat;
  int pcres;

  FUNC10(L, 1);
  pattern = FUNC1(L, 1, NULL);   /* Pattern (arg) or nil (not) at 1 */

  dir = FUNC12("");
  if (dir == NULL) {
    return 0;
  }

  FUNC4( L );                      /* Table at 2 */

  if (pattern) {
    /*
     * We know that pattern is a string, and so the "match" method will always
     * exist.  No need to check return value here
     */
    FUNC0( L, 1, "match" );  /* Function at 3 */
  }

  while (FUNC13(dir, &stat) == VFS_RES_OK) {
    if (pattern) {
      FUNC10( L, 3 );                 /* Ensure nothing else on stack */

      /* Construct and pcall(string.match,name,pattern) */
      FUNC8( L, 3 );
      FUNC7( L, stat.name );
      FUNC8( L, 1 );
      pcres = FUNC5( L, 2, 1, 0 );
      if (pcres != 0) {
        FUNC11(dir);
        FUNC2( L );
      }
      if (FUNC3( L, -1 )) {
        continue;
      }
    }
    FUNC6( L, stat.size );
    FUNC9( L, 2, stat.name );
  }

  /* Shed everything back to Table */
  FUNC10( L, 2 );
  FUNC11(dir);
  return 1;
}