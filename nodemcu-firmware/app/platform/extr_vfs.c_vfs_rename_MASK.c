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
struct TYPE_4__ {int (* rename ) (char*,char*) ;} ;
typedef  TYPE_1__ vfs_fs_fns ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (char*,char*) ; 

int32_t FUNC6( const char *oldname, const char *newname )
{
  vfs_fs_fns *fs_fns;
  const char *normoldname = FUNC3( oldname );
  const char *normnewname = FUNC3( newname );
  char *oldoutname, *newoutname;

#ifdef BUILD_SPIFFS
  if (myspiffs_realm( normoldname, &oldoutname, FALSE )) {
    if (fs_fns = myspiffs_realm( normnewname, &newoutname, FALSE )) {
      return fs_fns->rename( oldoutname, newoutname );
    }
  }
#endif

#ifdef BUILD_FATFS
  if (myfatfs_realm( normoldname, &oldoutname, FALSE )) {
    if (fs_fns = myfatfs_realm( normnewname, &newoutname, FALSE )) {
      int32_t r = fs_fns->rename( oldoutname, newoutname );
      free( oldoutname );
      free( newoutname );
      return r;
    }
    free( oldoutname );
  }
#endif

  return -1;
}