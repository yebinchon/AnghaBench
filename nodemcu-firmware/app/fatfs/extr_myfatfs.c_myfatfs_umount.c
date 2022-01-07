
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfs_vol {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {void* ldrname; } ;


 scalar_t__ FR_OK ;
 int GET_FATFS_FS (struct vfs_vol const*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 scalar_t__ f_mount (int *,void*,int ) ;
 int free (void*) ;
 scalar_t__ last_result ;
 TYPE_1__* myvol ;

__attribute__((used)) static int32_t myfatfs_umount( const struct vfs_vol *vol )
{
  GET_FATFS_FS(vol);

  last_result = f_mount( ((void*)0), myvol->ldrname, 0 );

  free( myvol->ldrname );
  free( (void *)vol );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}
