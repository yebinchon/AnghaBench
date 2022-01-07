
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t line_position; char* line; int done; } ;


 size_t LUA_MAXINPUT ;
 int NODE_DBG (char*,char*) ;
 TYPE_1__ gLoad ;
 int memcpy (char*,char const*,size_t) ;

int lua_put_line(const char *s, size_t l) {
  if (s == ((void*)0) || ++l > LUA_MAXINPUT || gLoad.line_position > 0)
    return 0;
  memcpy(gLoad.line, s, l);
  gLoad.line[l] = '\0';
  gLoad.line_position = l;
  gLoad.done = 1;
  NODE_DBG("Get command: %s\n", gLoad.line);
  return 1;
}
