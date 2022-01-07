
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scale_filter_data {int point_sampler; } ;


 int bfree (void*) ;
 int gs_samplerstate_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void scale_filter_destroy(void *data)
{
 struct scale_filter_data *filter = data;

 obs_enter_graphics();
 gs_samplerstate_destroy(filter->point_sampler);
 obs_leave_graphics();
 bfree(data);
}
