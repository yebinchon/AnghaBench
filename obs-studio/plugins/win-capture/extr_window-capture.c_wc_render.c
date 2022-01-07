
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_capture {int capture; } ;
typedef int gs_effect_t ;


 int OBS_EFFECT_OPAQUE ;
 int UNUSED_PARAMETER (int *) ;
 int dc_capture_render (int *,int ) ;
 int obs_get_base_effect (int ) ;

__attribute__((used)) static void wc_render(void *data, gs_effect_t *effect)
{
 struct window_capture *wc = data;
 dc_capture_render(&wc->capture, obs_get_base_effect(OBS_EFFECT_OPAQUE));

 UNUSED_PARAMETER(effect);
}
