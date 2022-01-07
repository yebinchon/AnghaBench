
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int add_event_callback ;
 int add_func (int ) ;
 int add_save_callback ;
 int get_current_profile ;
 int get_current_scene ;
 int get_current_scene_collection ;
 int get_current_transition ;
 int get_profiles ;
 int get_scene_collections ;
 int get_scene_names ;
 int get_scenes ;
 int get_transitions ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int remove_event_callback ;
 int remove_save_callback ;
 int set_current_profile ;
 int set_current_scene ;
 int set_current_scene_collection ;
 int set_current_transition ;

void add_lua_frontend_funcs(lua_State *script)
{
 lua_getglobal(script, "obslua");
 do { lua_pushstring(script, "obs_frontend_" "get_scene_names"); lua_pushcfunction(script, get_scene_names); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_scenes"); lua_pushcfunction(script, get_scenes); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_current_scene"); lua_pushcfunction(script, get_current_scene); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "set_current_scene"); lua_pushcfunction(script, set_current_scene); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_transitions"); lua_pushcfunction(script, get_transitions); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_current_transition"); lua_pushcfunction(script, get_current_transition); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "set_current_transition"); lua_pushcfunction(script, set_current_transition); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_scene_collections"); lua_pushcfunction(script, get_scene_collections); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_current_scene_collection"); lua_pushcfunction(script, get_current_scene_collection); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "set_current_scene_collection"); lua_pushcfunction(script, set_current_scene_collection); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_profiles"); lua_pushcfunction(script, get_profiles); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "get_current_profile"); lua_pushcfunction(script, get_current_profile); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "set_current_profile"); lua_pushcfunction(script, set_current_profile); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "remove_event_callback"); lua_pushcfunction(script, remove_event_callback); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "add_event_callback"); lua_pushcfunction(script, add_event_callback); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "remove_save_callback"); lua_pushcfunction(script, remove_save_callback); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_frontend_" "add_save_callback"); lua_pushcfunction(script, add_save_callback); lua_rawset(script, -3); } while (0);


 lua_pop(script, 1);
}
