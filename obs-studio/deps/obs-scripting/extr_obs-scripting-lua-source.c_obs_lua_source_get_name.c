
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {char const* display_name; } ;



__attribute__((used)) static const char *obs_lua_source_get_name(void *type_data)
{
 struct obs_lua_source *ls = type_data;
 return ls->display_name;
}
