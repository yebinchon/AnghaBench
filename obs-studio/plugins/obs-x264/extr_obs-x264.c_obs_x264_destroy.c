
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int packet_data; int performance_token; } ;


 int bfree (struct obs_x264*) ;
 int clear_data (struct obs_x264*) ;
 int da_free (int ) ;
 int os_end_high_performance (int ) ;

__attribute__((used)) static void obs_x264_destroy(void *data)
{
 struct obs_x264 *obsx264 = data;

 if (obsx264) {
  os_end_high_performance(obsx264->performance_token);
  clear_data(obsx264);
  da_free(obsx264->packet_data);
  bfree(obsx264);
 }
}
