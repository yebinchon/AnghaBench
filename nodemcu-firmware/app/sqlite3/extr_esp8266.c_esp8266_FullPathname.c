
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_stat {char const* name; } ;
typedef int sqlite3_vfs ;
typedef scalar_t__ sint32_t ;


 int SQLITE_OK ;
 scalar_t__ VFS_RES_OK ;
 int dbg_printf (char*,char*) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ vfs_stat (char const*,struct vfs_stat*) ;

__attribute__((used)) static int esp8266_FullPathname( sqlite3_vfs * vfs, const char * path, int len, char * fullpath )
{
 struct vfs_stat st;
 sint32_t rc = vfs_stat( path, &st );
 if ( rc == VFS_RES_OK ){
  strncpy( fullpath, st.name, len );
 } else {
  strncpy( fullpath, path, len );
 }

 fullpath[ len - 1 ] = '\0';

 dbg_printf("esp8266_FullPathname: %s\n", fullpath);
 return SQLITE_OK;
}
