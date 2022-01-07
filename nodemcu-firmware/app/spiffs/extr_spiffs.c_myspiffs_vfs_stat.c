
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfs_stat {char* name; int size; } ;
struct TYPE_3__ {int size; int name; } ;
typedef TYPE_1__ spiffs_stat ;
typedef int sint32_t ;


 int FS_OBJ_NAME_LEN ;
 scalar_t__ SPIFFS_stat (int *,char const*,TYPE_1__*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int fs ;
 int memset (struct vfs_stat*,int ,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static sint32_t myspiffs_vfs_stat( const char *name, struct vfs_stat *buf ) {
  spiffs_stat stat;

  if (0 <= SPIFFS_stat( &fs, name, &stat )) {
    memset( buf, 0, sizeof( struct vfs_stat ) );


    strncpy( buf->name, stat.name, FS_OBJ_NAME_LEN+1 );
    buf->name[FS_OBJ_NAME_LEN] = '\0';
    buf->size = stat.size;

    return VFS_RES_OK;
  } else {
    return VFS_RES_ERR;
  }
}
