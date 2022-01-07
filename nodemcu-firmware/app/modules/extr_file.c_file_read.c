
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ int16_t ;


 scalar_t__ EOF ;
 unsigned int FILE_READ_CHUNK ;
 int GET_FILE_OBJ ;
 scalar_t__ LUA_TNUMBER ;
 int argpos ;
 int fd ;
 int file_g_read (int *,unsigned int,scalar_t__,int ) ;
 scalar_t__ luaL_checkinteger (int *,int ) ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isstring (int *,int ) ;
 scalar_t__ lua_type (int *,int ) ;

__attribute__((used)) static int file_read( lua_State* L )
{
  unsigned need_len = FILE_READ_CHUNK;
  int16_t end_char = EOF;
  size_t el;

  GET_FILE_OBJ;

  if( lua_type( L, argpos ) == LUA_TNUMBER )
  {
    need_len = ( unsigned )luaL_checkinteger( L, argpos );
  }
  else if(lua_isstring(L, argpos))
  {
    const char *end = luaL_checklstring( L, argpos, &el );
    if(el!=1){
      return luaL_error( L, "wrong arg range" );
    }
    end_char = (int16_t)end[0];
  }

  return file_g_read(L, need_len, end_char, fd);
}
