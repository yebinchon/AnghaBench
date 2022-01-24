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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ fd; } ;
typedef  TYPE_1__ file_fd_ud ;

/* Variables and functions */
 size_t FS_OBJ_NAME_LEN ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ file_fd ; 
 int /*<<< orphan*/  file_fd_ref ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (char const*) ; 
 char* FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 

__attribute__((used)) static int FUNC13( lua_State* L )
{
  size_t len;

  // unref last file descriptor to allow gc'ing if not kept by user script
  FUNC5( L, LUA_REGISTRYINDEX, file_fd_ref );
  file_fd_ref = LUA_NOREF;

  const char *fname = FUNC1( L, 1, &len );
  const char *basename = FUNC11( fname );
  FUNC0(L, FUNC10(basename) <= FS_OBJ_NAME_LEN && FUNC10(fname) == len, 1, "filename invalid");

  const char *mode = FUNC3(L, 2, "r");

  file_fd = FUNC12(fname, mode);

  if(!file_fd){
    FUNC7(L);
  } else {
    file_fd_ud *ud = (file_fd_ud *) FUNC6( L, sizeof( file_fd_ud ) );
    ud->fd = file_fd;
    FUNC2( L, "file.obj" );
    FUNC9( L, -2 );

    // store reference to opened file
    FUNC8( L, -1 );
    file_fd_ref = FUNC4( L, LUA_REGISTRYINDEX );
  }
  return 1;
}