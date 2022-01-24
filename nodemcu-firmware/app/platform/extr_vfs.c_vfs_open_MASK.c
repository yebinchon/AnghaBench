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
struct TYPE_4__ {scalar_t__ (* open ) (char*,char const*) ;} ;
typedef  TYPE_1__ vfs_fs_fns ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

int FUNC6( const char *name, const char *mode )
{
  vfs_fs_fns *fs_fns;
  const char *normname = FUNC3( name );
  char *outname;

#ifdef BUILD_SPIFFS
  if (fs_fns = myspiffs_realm( normname, &outname, FALSE )) {
    return (int)fs_fns->open( outname, mode );
  }
#endif

#ifdef BUILD_FATFS
  if (fs_fns = myfatfs_realm( normname, &outname, FALSE )) {
    int r = (int)fs_fns->open( outname, mode );
    free( outname );
    return r;
  }
#endif

  return 0;
}