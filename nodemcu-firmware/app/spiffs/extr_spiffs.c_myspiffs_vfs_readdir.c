
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_stat {char* name; int size; } ;
struct vfs_dir {int dummy; } ;
struct spiffs_dirent {int size; int name; } ;
typedef int sint32_t ;


 int FS_OBJ_NAME_LEN ;
 int GET_DIR_D (struct vfs_dir const*) ;
 scalar_t__ SPIFFS_readdir (int ,struct spiffs_dirent*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int d ;
 int memset (struct vfs_stat*,int ,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static sint32_t myspiffs_vfs_readdir( const struct vfs_dir *dd, struct vfs_stat *buf ) {
  GET_DIR_D(dd);
  struct spiffs_dirent dirent;

  if (SPIFFS_readdir( d, &dirent )) {
    memset( buf, 0, sizeof( struct vfs_stat ) );



    strncpy( buf->name, dirent.name, FS_OBJ_NAME_LEN+1 );
    buf->name[FS_OBJ_NAME_LEN] = '\0';
    buf->size = dirent.size;
    return VFS_RES_OK;
  }

  return VFS_RES_ERR;
}
