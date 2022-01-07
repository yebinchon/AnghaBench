
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crop_filter_data {int add_val; int mul_val; } ;


 int UNUSED_PARAMETER (float) ;
 int calc_crop_dimensions (struct crop_filter_data*,int *,int *) ;
 int vec2_zero (int *) ;

__attribute__((used)) static void crop_filter_tick(void *data, float seconds)
{
 struct crop_filter_data *filter = data;

 vec2_zero(&filter->mul_val);
 vec2_zero(&filter->add_val);
 calc_crop_dimensions(filter, &filter->mul_val, &filter->add_val);

 UNUSED_PARAMETER(seconds);
}
