
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float cur_exposure_frac; float cur_gain_frac; } ;
typedef TYPE_1__ CameraState ;


 float pow (double,float const) ;
 int set_exposure (TYPE_1__*,float,float) ;

__attribute__((used)) static void do_autoexposure(CameraState *s, float grey_frac) {
  const float target_grey = 0.3;

  float new_exposure = s->cur_exposure_frac;
  new_exposure *= pow(1.05, (target_grey - grey_frac) / 0.05 );


  float new_gain = s->cur_gain_frac;
  if (new_exposure < 0.10) {
    new_gain *= 0.95;
  } else if (new_exposure > 0.40) {
    new_gain *= 1.05;
  }

  set_exposure(s, new_exposure, new_gain);
}
