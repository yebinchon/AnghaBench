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
typedef  int /*<<< orphan*/  vfs_vol ;
struct TYPE_4__ {int /*<<< orphan*/ * (* mount ) (char*,int) ;} ;
typedef  TYPE_1__ vfs_fs_fns ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 

vfs_vol *FUNC6( const char *name, int num )
{
  vfs_fs_fns *fs_fns;
  const char *normname = FUNC3( name );
  char *outname;

#ifdef BUILD_SPIFFS
  if (fs_fns = myspiffs_realm( normname, &outname, FALSE )) {
    return fs_fns->mount( outname, num );
  }
#endif

#ifdef BUILD_FATFS
  if (fs_fns = myfatfs_realm( normname, &outname, FALSE )) {
    vfs_vol *r = fs_fns->mount( outname, num );
    free( outname );
    return r;
  }
#endif

  return NULL;
}