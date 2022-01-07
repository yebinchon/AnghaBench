
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;


 int fill_twitch_servers_locked (int *) ;
 int twitch_ingests_lock () ;
 int twitch_ingests_unlock () ;

__attribute__((used)) static inline bool fill_twitch_servers(obs_property_t *servers_prop)
{
 bool success;

 twitch_ingests_lock();
 success = fill_twitch_servers_locked(servers_prop);
 twitch_ingests_unlock();

 return success;
}
