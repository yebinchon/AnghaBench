#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* remove ) (char*) ;} ;
typedef  TYPE_1__ vfs_fs_fns ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int32_t FUNC6( const char *name )
{
  vfs_fs_fns *fs_fns;
  const char *normname = FUNC3( name );
  char *outname;

#ifdef BUILD_SPIFFS
  if (fs_fns = myspiffs_realm( normname, &outname, FALSE )) {
    return fs_fns->remove( outname );
  }
#endif

#ifdef BUILD_FATFS
  if (fs_fns = myfatfs_realm( normname, &outname, FALSE )) {
    int32_t r = fs_fns->remove( outname );
    free( outname );
    return r;
  }
#endif

  return VFS_RES_ERR;
}