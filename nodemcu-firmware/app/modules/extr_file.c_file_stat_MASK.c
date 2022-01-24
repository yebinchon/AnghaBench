#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sec; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  mon; int /*<<< orphan*/  year; } ;
struct vfs_stat {TYPE_1__ tm; scalar_t__ tm_valid; int /*<<< orphan*/  is_arch; int /*<<< orphan*/  is_sys; int /*<<< orphan*/  is_hidden; int /*<<< orphan*/  is_rdonly; int /*<<< orphan*/  is_dir; int /*<<< orphan*/  name; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TIMEDEF_DAY ; 
 int /*<<< orphan*/  FILE_TIMEDEF_HOUR ; 
 int /*<<< orphan*/  FILE_TIMEDEF_MIN ; 
 int /*<<< orphan*/  FILE_TIMEDEF_MON ; 
 int /*<<< orphan*/  FILE_TIMEDEF_SEC ; 
 int /*<<< orphan*/  FILE_TIMEDEF_YEAR ; 
 size_t FS_OBJ_NAME_LEN ; 
 scalar_t__ VFS_RES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 size_t FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,struct vfs_stat*) ; 

__attribute__((used)) static int FUNC10( lua_State* L )
{
  size_t len;
  const char *fname = FUNC1( L, 1, &len );
  FUNC0( L, FUNC8(fname) <= FS_OBJ_NAME_LEN && FUNC8(fname) == len, 1, "filename invalid" );

  struct vfs_stat stat;
  if (FUNC9( (char *)fname, &stat ) != VFS_RES_OK) {
    FUNC5( L );
    return 1;
  }

  FUNC2( L, 0, 7 );

  FUNC4( L, stat.size );
  FUNC7( L, -2, "size" );

  FUNC6( L, stat.name );
  FUNC7( L, -2, "name" );

  FUNC3( L, stat.is_dir );
  FUNC7( L, -2, "is_dir" );

  FUNC3( L, stat.is_rdonly );
  FUNC7( L, -2, "is_rdonly" );

  FUNC3( L, stat.is_hidden );
  FUNC7( L, -2, "is_hidden" );

  FUNC3( L, stat.is_sys );
  FUNC7( L, -2, "is_sys" );

  FUNC3( L, stat.is_arch );
  FUNC7( L, -2, "is_arch" );

  // time stamp as sub-table
  FUNC2( L, 0, 6 );

  FUNC4( L, stat.tm_valid ? stat.tm.year : FILE_TIMEDEF_YEAR );
  FUNC7( L, -2, "year" );

  FUNC4( L, stat.tm_valid ? stat.tm.mon : FILE_TIMEDEF_MON );
  FUNC7( L, -2, "mon" );

  FUNC4( L, stat.tm_valid ? stat.tm.day : FILE_TIMEDEF_DAY );
  FUNC7( L, -2, "day" );

  FUNC4( L, stat.tm_valid ? stat.tm.hour : FILE_TIMEDEF_HOUR );
  FUNC7( L, -2, "hour" );

  FUNC4( L, stat.tm_valid ? stat.tm.min : FILE_TIMEDEF_MIN );
  FUNC7( L, -2, "min" );

  FUNC4( L, stat.tm_valid ? stat.tm.sec : FILE_TIMEDEF_SEC );
  FUNC7( L, -2, "sec" );

  FUNC7( L, -2, "time" );

  return 1;
}