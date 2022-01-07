
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct gpu_delay_filter_data {int target_valid; scalar_t__ cx; scalar_t__ cy; int context; } ;
typedef int obs_source_t ;


 int * obs_filter_get_target (int ) ;
 scalar_t__ obs_source_get_base_height (int *) ;
 scalar_t__ obs_source_get_base_width (int *) ;
 int reset_textures (struct gpu_delay_filter_data*) ;

__attribute__((used)) static inline bool check_size(struct gpu_delay_filter_data *f)
{
 obs_source_t *target = obs_filter_get_target(f->context);
 uint32_t cx;
 uint32_t cy;

 f->target_valid = !!target;
 if (!f->target_valid)
  return 1;

 cx = obs_source_get_base_width(target);
 cy = obs_source_get_base_height(target);

 f->target_valid = !!cx && !!cy;
 if (!f->target_valid)
  return 1;

 if (cx != f->cx || cy != f->cy) {
  f->cx = cx;
  f->cy = cy;
  reset_textures(f);
  return 1;
 }

 return 0;
}
