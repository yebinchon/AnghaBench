
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_BEHAVIOR ;
 int S_BEHAVIOR_STOP_RESTART ;
 int S_LOOP ;
 int S_NETWORK_CACHING ;
 int S_SHUFFLE ;
 int S_SUBTITLE_ENABLE ;
 int S_SUBTITLE_TRACK ;
 int S_TRACK ;
 int obs_data_set_default_bool (int *,int ,int) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,int ) ;

__attribute__((used)) static void vlcs_defaults(obs_data_t *settings)
{
 obs_data_set_default_bool(settings, S_LOOP, 1);
 obs_data_set_default_bool(settings, S_SHUFFLE, 0);
 obs_data_set_default_string(settings, S_BEHAVIOR,
        S_BEHAVIOR_STOP_RESTART);
 obs_data_set_default_int(settings, S_NETWORK_CACHING, 400);
 obs_data_set_default_int(settings, S_TRACK, 1);
 obs_data_set_default_bool(settings, S_SUBTITLE_ENABLE, 0);
 obs_data_set_default_int(settings, S_SUBTITLE_TRACK, 1);
}
