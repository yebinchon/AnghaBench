
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

__attribute__((used)) static void replay_buffer_defaults(obs_data_t *s)
{
 obs_data_set_default_int(s, "max_time_sec", 15);
 obs_data_set_default_int(s, "max_size_mb", 500);
 obs_data_set_default_string(s, "format", "%CCYY-%MM-%DD %hh-%mm-%ss");
 obs_data_set_default_string(s, "extension", "mp4");
 obs_data_set_default_bool(s, "allow_spaces", 1);
}
