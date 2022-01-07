
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {float x; float y; } ;
struct TYPE_3__ {float x; float y; } ;
struct scroll_filter_data {TYPE_2__ offset; TYPE_1__ scroll_speed; int sampler; void* loop; void* cy; void* cx; void* limit_cy; void* limit_cx; } ;
struct gs_sampler_info {int address_v; int address_u; int filter; } ;
typedef int obs_data_t ;


 int GS_ADDRESS_BORDER ;
 int GS_ADDRESS_WRAP ;
 int GS_FILTER_LINEAR ;
 int gs_samplerstate_create (struct gs_sampler_info*) ;
 int gs_samplerstate_destroy (int ) ;
 void* obs_data_get_bool (int *,char*) ;
 scalar_t__ obs_data_get_double (int *,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void scroll_filter_update(void *data, obs_data_t *settings)
{
 struct scroll_filter_data *filter = data;

 filter->limit_cx = obs_data_get_bool(settings, "limit_cx");
 filter->limit_cy = obs_data_get_bool(settings, "limit_cy");
 filter->cx = (uint32_t)obs_data_get_int(settings, "cx");
 filter->cy = (uint32_t)obs_data_get_int(settings, "cy");

 filter->scroll_speed.x =
  (float)obs_data_get_double(settings, "speed_x");
 filter->scroll_speed.y =
  (float)obs_data_get_double(settings, "speed_y");

 filter->loop = obs_data_get_bool(settings, "loop");

 struct gs_sampler_info sampler_info = {
  .filter = GS_FILTER_LINEAR,
  .address_u = filter->loop ? GS_ADDRESS_WRAP : GS_ADDRESS_BORDER,
  .address_v = filter->loop ? GS_ADDRESS_WRAP : GS_ADDRESS_BORDER,
 };

 obs_enter_graphics();
 gs_samplerstate_destroy(filter->sampler);
 filter->sampler = gs_samplerstate_create(&sampler_info);
 obs_leave_graphics();

 if (filter->scroll_speed.x == 0.0f)
  filter->offset.x = 0.0f;
 if (filter->scroll_speed.y == 0.0f)
  filter->offset.y = 0.0f;
}
