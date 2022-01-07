
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {int size_changed; int draw_info_mutex; void* cy; void* cx; } ;
typedef TYPE_1__ obs_display_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_display_resize(obs_display_t *display, uint32_t cx, uint32_t cy)
{
 if (!display)
  return;

 pthread_mutex_lock(&display->draw_info_mutex);

 display->cx = cx;
 display->cy = cy;
 display->size_changed = 1;

 pthread_mutex_unlock(&display->draw_info_mutex);
}
