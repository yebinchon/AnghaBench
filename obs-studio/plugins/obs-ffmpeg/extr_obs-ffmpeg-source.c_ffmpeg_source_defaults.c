
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;

__attribute__((used)) static void ffmpeg_source_defaults(obs_data_t *settings)
{
 obs_data_set_default_bool(settings, "is_local_file", 1);
 obs_data_set_default_bool(settings, "looping", 0);
 obs_data_set_default_bool(settings, "clear_on_media_end", 1);
 obs_data_set_default_bool(settings, "restart_on_activate", 1);
 obs_data_set_default_int(settings, "buffering_mb", 2);
 obs_data_set_default_int(settings, "speed_percent", 100);
}
