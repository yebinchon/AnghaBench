
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_delay_filter_data {int processed_frame; } ;


 int UNUSED_PARAMETER (float) ;
 int check_interval (struct gpu_delay_filter_data*) ;
 scalar_t__ check_size (struct gpu_delay_filter_data*) ;

__attribute__((used)) static void gpu_delay_filter_tick(void *data, float t)
{
 UNUSED_PARAMETER(t);

 struct gpu_delay_filter_data *f = data;

 f->processed_frame = 0;

 if (check_size(f))
  return;
 check_interval(f);
}
