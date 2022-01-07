
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_delay_filter_data {scalar_t__ interval_ns; } ;


 int check_interval (struct gpu_delay_filter_data*) ;
 int free_textures (struct gpu_delay_filter_data*) ;

__attribute__((used)) static inline void reset_textures(struct gpu_delay_filter_data *f)
{
 f->interval_ns = 0;
 free_textures(f);
 check_interval(f);
}
