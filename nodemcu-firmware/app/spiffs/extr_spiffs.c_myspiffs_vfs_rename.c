
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sint32_t ;


 int SPIFFS_rename (int *,char const*,char const*) ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_rename( const char *oldname, const char *newname ) {
  return SPIFFS_rename( &fs, oldname, newname );
}
