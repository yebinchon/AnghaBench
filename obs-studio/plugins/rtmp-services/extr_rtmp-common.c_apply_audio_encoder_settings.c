
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int json_t ;


 scalar_t__ json_integer_value (int *) ;
 scalar_t__ json_is_integer (int *) ;
 int * json_object_get (int *,char*) ;
 int obs_data_get_int (int *,char*) ;
 int obs_data_set_int (int *,char*,int) ;

__attribute__((used)) static void apply_audio_encoder_settings(obs_data_t *settings,
      json_t *recommended)
{
 json_t *item = json_object_get(recommended, "max audio bitrate");
 if (json_is_integer(item)) {
  int max_bitrate = (int)json_integer_value(item);
  if (obs_data_get_int(settings, "bitrate") > max_bitrate)
   obs_data_set_int(settings, "bitrate", max_bitrate);
 }
}
