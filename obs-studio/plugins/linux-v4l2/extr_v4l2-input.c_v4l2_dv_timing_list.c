
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double vfrontporch; double vsync; double vbackporch; double il_vfrontporch; double il_vsync; double il_vbackporch; double hfrontporch; double hsync; double hbackporch; scalar_t__ interlaced; scalar_t__ height; scalar_t__ width; scalar_t__ pixelclock; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct dstr {int array; } ;
typedef int obs_property_t ;


 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_printf (struct dstr*,char*,scalar_t__,scalar_t__,char,double) ;
 int obs_module_text (char*) ;
 int obs_property_list_add_int (int *,int ,int) ;
 int obs_property_list_clear (int *) ;
 scalar_t__ v4l2_enum_dv_timing (int,struct v4l2_dv_timings*,int) ;

__attribute__((used)) static void v4l2_dv_timing_list(int dev, obs_property_t *prop)
{
 struct v4l2_dv_timings dvt;
 struct dstr buf;
 int index = 0;
 dstr_init(&buf);

 obs_property_list_clear(prop);

 obs_property_list_add_int(prop, obs_module_text("LeaveUnchanged"), -1);

 while (v4l2_enum_dv_timing(dev, &dvt, index) == 0) {

  double h = (double)dvt.bt.height + dvt.bt.vfrontporch +
      dvt.bt.vsync + dvt.bt.vbackporch +
      dvt.bt.il_vfrontporch + dvt.bt.il_vsync +
      dvt.bt.il_vbackporch;
  double w = (double)dvt.bt.width + dvt.bt.hfrontporch +
      dvt.bt.hsync + dvt.bt.hbackporch;
  double i = (dvt.bt.interlaced) ? 2.0f : 1.0f;
  double rate = (double)dvt.bt.pixelclock / (w * (h / i));

  dstr_printf(&buf, "%ux%u%c %.2f", dvt.bt.width, dvt.bt.height,
       (dvt.bt.interlaced) ? 'i' : 'p', rate);

  obs_property_list_add_int(prop, buf.array, index);

  index++;
 }

 dstr_free(&buf);
}
