
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_module_name () ;
 int ingests_loaded ;
 int ingests_refreshed ;
 int ingests_refreshing ;
 scalar_t__ os_atomic_load_bool (int *) ;
 int os_atomic_set_bool (int *,int) ;
 int os_sleep_ms (int) ;
 int twitch_ingest_update ;
 int twitch_update_info ;
 int update_info_create_single (char*,int ,char*,int ,int *) ;

void twitch_ingests_refresh(int seconds)
{
 if (os_atomic_load_bool(&ingests_refreshed))
  return;

 if (!os_atomic_load_bool(&ingests_refreshing)) {
  os_atomic_set_bool(&ingests_refreshing, 1);

  twitch_update_info = update_info_create_single(
   "[twitch ingest update] ", get_module_name(),
   "https://ingest.twitch.tv/api/v2/ingests",
   twitch_ingest_update, ((void*)0));
 }


 if (!os_atomic_load_bool(&ingests_loaded)) {
  for (int i = 0; i < seconds * 100; i++) {
   if (os_atomic_load_bool(&ingests_refreshed)) {
    break;
   }
   os_sleep_ms(10);
  }
 }
}
