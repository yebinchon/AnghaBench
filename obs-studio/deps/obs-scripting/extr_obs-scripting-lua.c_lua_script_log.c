
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* array; } ;
struct obs_lua_script {TYPE_1__ log_chunk; int base; } ;
typedef int lua_State ;


 struct obs_lua_script* current_lua_script ;
 int dstr_copy (TYPE_1__*,char const*) ;
 int dstr_resize (TYPE_1__*,int ) ;
 scalar_t__ lua_tointeger (int *,int) ;
 char* lua_tostring (int *,int) ;
 int script_log (int *,int,char*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int lua_script_log(lua_State *script)
{
 struct obs_lua_script *data = current_lua_script;
 int log_level = (int)lua_tointeger(script, 1);
 const char *msg = lua_tostring(script, 2);

 if (!msg)
  return 0;



 dstr_copy(&data->log_chunk, msg);

 const char *start = data->log_chunk.array;
 char *endl = strchr(start, '\n');

 while (endl) {
  *endl = 0;
  script_log(&data->base, log_level, "%s", start);
  *endl = '\n';

  start = endl + 1;
  endl = strchr(start, '\n');
 }

 if (start && *start)
  script_log(&data->base, log_level, "%s", start);
 dstr_resize(&data->log_chunk, 0);



 return 0;
}
