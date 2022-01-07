
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_capture {int * window; } ;
typedef int obs_data_t ;


 int update_settings (struct window_capture*,int *) ;

__attribute__((used)) static void wc_update(void *data, obs_data_t *settings)
{
 struct window_capture *wc = data;
 update_settings(wc, settings);


 wc->window = ((void*)0);
}
