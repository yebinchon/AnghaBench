
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * swap; int draw_callbacks; int draw_info_mutex; int draw_callbacks_mutex; } ;
typedef TYPE_1__ obs_display_t ;


 int da_free (int ) ;
 int gs_swapchain_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void obs_display_free(obs_display_t *display)
{
 pthread_mutex_destroy(&display->draw_callbacks_mutex);
 pthread_mutex_destroy(&display->draw_info_mutex);
 da_free(display->draw_callbacks);

 if (display->swap) {
  gs_swapchain_destroy(display->swap);
  display->swap = ((void*)0);
 }
}
