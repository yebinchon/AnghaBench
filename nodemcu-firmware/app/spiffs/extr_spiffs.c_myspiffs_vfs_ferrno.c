
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int sint32_t ;


 int SPIFFS_errno (int *) ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_ferrno( const struct vfs_file *fd ) {
  return SPIFFS_errno( &fs );
}
