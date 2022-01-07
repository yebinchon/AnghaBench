
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int params; int context; } ;
typedef int obs_data_t ;


 int update_settings (struct obs_x264*,int *,int) ;
 int warn (char*,int) ;
 int x264_encoder_reconfig (int ,int *) ;

__attribute__((used)) static bool obs_x264_update(void *data, obs_data_t *settings)
{
 struct obs_x264 *obsx264 = data;
 bool success = update_settings(obsx264, settings, 1);
 int ret;

 if (success) {
  ret = x264_encoder_reconfig(obsx264->context, &obsx264->params);
  if (ret != 0)
   warn("Failed to reconfigure: %d", ret);
  return ret == 0;
 }

 return 0;
}
