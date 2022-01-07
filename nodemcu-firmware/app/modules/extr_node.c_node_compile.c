
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Proto ;


 int FS_OBJ_NAME_LEN ;
 int LUA_ERR_CC_INTOVERFLOW ;
 int LUA_ERR_CC_NOTINTEGER ;
 int NODE_DBG (char*) ;
 scalar_t__ VFS_RES_OK ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_loadfsfile (int *,char const*) ;
 int luaM_free (int *,char*) ;
 char* luaM_malloc (int *,size_t) ;
 int luaU_dump (int *,int *,int ,int*,int) ;
 int lua_lock (int *) ;
 char* lua_tostring (int *,int) ;
 int lua_unlock (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int * toproto (int *,int) ;
 char* vfs_basename (char const*) ;
 int vfs_close (int) ;
 scalar_t__ vfs_flush (int) ;
 int vfs_open (char*,char*) ;
 int writer ;

__attribute__((used)) static int node_compile( lua_State* L )
{
  Proto* f;
  int file_fd = 0;
  size_t len;
  const char *fname = luaL_checklstring( L, 1, &len );
  const char *basename = vfs_basename( fname );
  luaL_argcheck(L, strlen(basename) <= FS_OBJ_NAME_LEN && strlen(fname) == len, 1, "filename invalid");

  char *output = luaM_malloc( L, len+1 );
  strcpy(output, fname);

  if (len < 4 || (strcmp( output + len - 4, ".lua") != 0) ) {
    luaM_free( L, output );
    return luaL_error(L, "not a .lua file");
  }

  output[strlen(output) - 2] = 'c';
  output[strlen(output) - 1] = '\0';
  NODE_DBG(output);
  NODE_DBG("\n");
  if (luaL_loadfsfile(L, fname) != 0) {
    luaM_free( L, output );
    return luaL_error(L, lua_tostring(L, -1));
  }

  f = toproto(L, -1);

  int stripping = 1;

  file_fd = vfs_open(output, "w+");
  if (!file_fd)
  {
    luaM_free( L, output );
    return luaL_error(L, "cannot open/write to file");
  }

  lua_lock(L);
  int result = luaU_dump(L, f, writer, &file_fd, stripping);
  lua_unlock(L);

  if (vfs_flush(file_fd) != VFS_RES_OK) {

    result = 1;
  }
  vfs_close(file_fd);
  file_fd = 0;
  luaM_free( L, output );

  if (result == LUA_ERR_CC_INTOVERFLOW) {
    return luaL_error(L, "value too big or small for target integer type");
  }
  if (result == LUA_ERR_CC_NOTINTEGER) {
    return luaL_error(L, "target lua_Number is integral but fractional value found");
  }
  if (result == 1) {
    return luaL_error(L, "writing to file failed");
  }

  return 0;
}
