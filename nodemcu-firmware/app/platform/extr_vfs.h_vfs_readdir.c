
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fns; } ;
typedef TYPE_2__ vfs_dir ;
struct vfs_stat {int dummy; } ;
typedef int int32_t ;
struct TYPE_5__ {int (* readdir ) (TYPE_2__*,struct vfs_stat*) ;} ;


 int stub1 (TYPE_2__*,struct vfs_stat*) ;

__attribute__((used)) static int32_t vfs_readdir( vfs_dir *dd, struct vfs_stat *buf ) { return dd->fns->readdir( dd, buf ); }
