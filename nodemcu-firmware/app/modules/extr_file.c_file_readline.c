
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int FILE_READ_CHUNK ;
 int GET_FILE_OBJ ;
 int fd ;
 int file_g_read (int *,int ,char,int ) ;

__attribute__((used)) static int file_readline( lua_State* L )
{
  GET_FILE_OBJ;

  return file_g_read(L, FILE_READ_CHUNK, '\n', fd);
}
