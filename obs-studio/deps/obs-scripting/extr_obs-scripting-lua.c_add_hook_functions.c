
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int add_func (char*,int ) ;
 int calldata_sceneitem ;
 int calldata_source ;
 int enum_sources ;
 int hook_error ;
 int hook_print ;
 int hotkey_register_frontend ;
 int hotkey_unregister ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_script_log ;
 int obs_lua_add_main_render_callback ;
 int obs_lua_add_tick_callback ;
 int obs_lua_remove_main_render_callback ;
 int obs_lua_remove_tick_callback ;
 int obs_lua_signal_handler_connect ;
 int obs_lua_signal_handler_connect_global ;
 int obs_lua_signal_handler_disconnect ;
 int obs_lua_signal_handler_disconnect_global ;
 int properties_add_button ;
 int property_set_modified_callback ;
 int remove_current_callback ;
 int scene_enum_items ;
 int sceneitem_list_release ;
 int source_enum_filters ;
 int source_list_release ;
 int timer_add ;
 int timer_remove ;

__attribute__((used)) static void add_hook_functions(lua_State *script)
{







 lua_getglobal(script, "_G");

 do { lua_pushstring(script, "print"); lua_pushcfunction(script, hook_print); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "error"); lua_pushcfunction(script, hook_error); lua_rawset(script, -3); } while (0);

 lua_pop(script, 1);



 lua_getglobal(script, "obslua");

 do { lua_pushstring(script, "script_log"); lua_pushcfunction(script, lua_script_log); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "timer_remove"); lua_pushcfunction(script, timer_remove); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "timer_add"); lua_pushcfunction(script, timer_add); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_enum_sources"); lua_pushcfunction(script, enum_sources); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_source_enum_filters"); lua_pushcfunction(script, source_enum_filters); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_scene_enum_items"); lua_pushcfunction(script, scene_enum_items); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "source_list_release"); lua_pushcfunction(script, source_list_release); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "sceneitem_list_release"); lua_pushcfunction(script, sceneitem_list_release); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "calldata_source"); lua_pushcfunction(script, calldata_source); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "calldata_sceneitem"); lua_pushcfunction(script, calldata_sceneitem); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_add_main_render_callback"); lua_pushcfunction(script, obs_lua_add_main_render_callback); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "obs_remove_main_render_callback"); lua_pushcfunction(script, obs_lua_remove_main_render_callback); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "obs_add_tick_callback"); lua_pushcfunction(script, obs_lua_add_tick_callback); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_remove_tick_callback"); lua_pushcfunction(script, obs_lua_remove_tick_callback); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "signal_handler_connect"); lua_pushcfunction(script, obs_lua_signal_handler_connect); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "signal_handler_disconnect"); lua_pushcfunction(script, obs_lua_signal_handler_disconnect); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "signal_handler_connect_global"); lua_pushcfunction(script, obs_lua_signal_handler_connect_global); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "signal_handler_disconnect_global"); lua_pushcfunction(script, obs_lua_signal_handler_disconnect_global); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "obs_hotkey_unregister"); lua_pushcfunction(script, hotkey_unregister); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_hotkey_register_frontend"); lua_pushcfunction(script, hotkey_register_frontend); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_properties_add_button"); lua_pushcfunction(script, properties_add_button); lua_rawset(script, -3); } while (0);
 do { lua_pushstring(script, "obs_property_set_modified_callback"); lua_pushcfunction(script, property_set_modified_callback); lua_rawset(script, -3); } while (0);

 do { lua_pushstring(script, "remove_current_callback"); lua_pushcfunction(script, remove_current_callback); lua_rawset(script, -3); } while (0);

 lua_pop(script, 1);

}
