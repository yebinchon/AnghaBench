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
struct TYPE_4__ {int /*<<< orphan*/  (* fsinfo ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ vfs_fs_fns ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int32_t FUNC6( const char *name, uint32_t *total, uint32_t *used )
{
  vfs_fs_fns *fs_fns;
  char *outname;

  if (!name) name = "";  // current drive

  const char *normname = FUNC3( name );

#ifdef BUILD_SPIFFS
  if (fs_fns = myspiffs_realm( normname, &outname, FALSE )) {
    return fs_fns->fsinfo( total, used );
  }
#endif

#ifdef BUILD_FATFS
  if (fs_fns = myfatfs_realm( normname, &outname, FALSE )) {
    free( outname );
    return fs_fns->fsinfo( total, used );
  }
#endif

  return VFS_RES_ERR;
}