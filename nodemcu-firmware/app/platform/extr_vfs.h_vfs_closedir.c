
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fns; } ;
typedef TYPE_2__ vfs_dir ;
typedef int int32_t ;
struct TYPE_5__ {int (* close ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int32_t vfs_closedir( vfs_dir *dd ) { return dd->fns->close( dd ); }
