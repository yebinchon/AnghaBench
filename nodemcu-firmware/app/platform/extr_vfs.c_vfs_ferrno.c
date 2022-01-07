
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* ferrno ) () ;} ;
typedef TYPE_2__ vfs_fs_fns ;
struct TYPE_9__ {TYPE_1__* fns; } ;
typedef TYPE_3__ vfs_file ;
typedef int int32_t ;
struct TYPE_7__ {int (* ferrno ) (TYPE_3__*) ;} ;


 int FALSE ;
 int free (char*) ;
 TYPE_2__* myfatfs_realm (char const*,char**,int ) ;
 TYPE_2__* myspiffs_realm (char const*,char**,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 () ;
 int stub3 () ;

int32_t vfs_ferrno( int fd )
{
  vfs_file *f = (vfs_file *)fd;

  if (f) {
    return f->fns->ferrno ? f->fns->ferrno( f ) : 0;
  } else {
    vfs_fs_fns *fs_fns;
    const char *name = "";
    char *outname;
  }
}
