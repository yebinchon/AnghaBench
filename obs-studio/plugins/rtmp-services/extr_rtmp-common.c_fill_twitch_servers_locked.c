
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twitch_ingest {char* url; int name; } ;
typedef int obs_property_t ;


 int obs_module_text (char*) ;
 int obs_property_list_add_string (int *,int ,char*) ;
 struct twitch_ingest twitch_ingest (size_t) ;
 size_t twitch_ingest_count () ;

__attribute__((used)) static bool fill_twitch_servers_locked(obs_property_t *servers_prop)
{
 size_t count = twitch_ingest_count();

 obs_property_list_add_string(servers_prop,
         obs_module_text("Server.Auto"), "auto");

 if (count <= 1)
  return 0;

 for (size_t i = 0; i < count; i++) {
  struct twitch_ingest ing = twitch_ingest(i);
  obs_property_list_add_string(servers_prop, ing.name, ing.url);
 }

 return 1;
}
