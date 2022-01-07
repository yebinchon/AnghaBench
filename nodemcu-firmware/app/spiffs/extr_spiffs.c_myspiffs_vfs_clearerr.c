
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPIFFS_clearerr (int *) ;
 int fs ;

__attribute__((used)) static void myspiffs_vfs_clearerr( void ) {
  SPIFFS_clearerr( &fs );
}
