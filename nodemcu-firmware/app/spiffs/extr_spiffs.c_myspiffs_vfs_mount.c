
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_vol ;


 int FALSE ;
 scalar_t__ myspiffs_mount (int ) ;

__attribute__((used)) static vfs_vol *myspiffs_vfs_mount( const char *name, int num ) {

  return myspiffs_mount(FALSE) ? (vfs_vol *)1 : ((void*)0);
}
