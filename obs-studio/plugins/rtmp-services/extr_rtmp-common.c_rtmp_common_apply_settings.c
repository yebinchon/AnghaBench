
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_common {int dummy; } ;
typedef int obs_data_t ;
typedef int json_t ;


 int initialize_output (struct rtmp_common*,int *,int *,int *) ;
 int json_decref (int *) ;
 int * open_services_file () ;

__attribute__((used)) static void rtmp_common_apply_settings(void *data, obs_data_t *video_settings,
           obs_data_t *audio_settings)
{
 struct rtmp_common *service = data;
 json_t *root = open_services_file();

 if (root) {
  initialize_output(service, root, video_settings,
      audio_settings);
  json_decref(root);
 }
}
