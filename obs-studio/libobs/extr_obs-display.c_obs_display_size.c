
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int draw_info_mutex; scalar_t__ cy; scalar_t__ cx; } ;
typedef TYPE_1__ obs_display_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_display_size(obs_display_t *display, uint32_t *width, uint32_t *height)
{
 *width = 0;
 *height = 0;

 if (display) {
  pthread_mutex_lock(&display->draw_info_mutex);

  *width = display->cx;
  *height = display->cy;

  pthread_mutex_unlock(&display->draw_info_mutex);
 }
}
