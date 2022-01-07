
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fns; } ;
typedef TYPE_2__ vfs_file ;
typedef int int32_t ;
struct TYPE_4__ {int (* lseek ) (TYPE_2__*,int ,int) ;} ;


 int VFS_RES_ERR ;
 int stub1 (TYPE_2__*,int ,int) ;

__attribute__((used)) static int32_t vfs_lseek( int fd, int32_t off, int whence ) {
  vfs_file *f = (vfs_file *)fd;
  return f ? f->fns->lseek( f, off, whence ) : VFS_RES_ERR;
}
