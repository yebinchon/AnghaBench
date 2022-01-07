
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NODE_ERR (char*) ;
 int file_close (int *) ;
 int luaL_error (int *,char*) ;
 int vfs_format () ;

__attribute__((used)) static int file_format( lua_State* L )
{
  size_t len;
  file_close(L);
  if( !vfs_format() )
  {
    NODE_ERR( "\n*** ERROR ***: unable to format. FS might be compromised.\n" );
    NODE_ERR( "It is advised to re-flash the NodeMCU image.\n" );
    luaL_error(L, "Failed to format file system");
  }
  else{
    NODE_ERR( "format done.\n" );
  }
  return 0;
}
