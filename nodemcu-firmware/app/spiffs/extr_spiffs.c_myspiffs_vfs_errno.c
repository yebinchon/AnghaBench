
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sint32_t ;


 int SPIFFS_errno (int *) ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_errno( void ) {
  return SPIFFS_errno( &fs );
}
