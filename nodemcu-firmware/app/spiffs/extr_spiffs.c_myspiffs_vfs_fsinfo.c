
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sint32_t ;


 int SPIFFS_info (int *,int *,int *) ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_fsinfo( uint32_t *total, uint32_t *used ) {
  return SPIFFS_info( &fs, total, used );
}
