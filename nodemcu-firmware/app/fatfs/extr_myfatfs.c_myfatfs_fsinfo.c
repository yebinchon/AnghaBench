
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {int n_fatent; int csize; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;


 int FF_MAX_SS ;
 scalar_t__ FR_OK ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 scalar_t__ f_getfree (char*,int*,TYPE_1__**) ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_fsinfo( uint32_t *total, uint32_t *used )
{
  DWORD free_clusters;
  FATFS *fatfs;

  if ((last_result = f_getfree( "", &free_clusters, &fatfs )) == FR_OK) {

    *total = (fatfs->n_fatent * fatfs->csize) / (1024 / FF_MAX_SS);
    *used = *total - (free_clusters * fatfs->csize) / (1024 / FF_MAX_SS);
  }

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}
