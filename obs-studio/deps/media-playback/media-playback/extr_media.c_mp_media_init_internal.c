
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_media_info {int hardware_decoding; scalar_t__ format; scalar_t__ path; } ;
struct TYPE_4__ {int thread_valid; int thread; int hw; int * format_name; int * path; int sem; int mutex; } ;
typedef TYPE_1__ mp_media_t ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int * bstrdup (scalar_t__) ;
 int mp_media_thread_start ;
 scalar_t__ os_sem_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

__attribute__((used)) static inline bool mp_media_init_internal(mp_media_t *m,
       const struct mp_media_info *info)
{
 if (pthread_mutex_init(&m->mutex, ((void*)0)) != 0) {
  blog(LOG_WARNING, "MP: Failed to init mutex");
  return 0;
 }
 if (os_sem_init(&m->sem, 0) != 0) {
  blog(LOG_WARNING, "MP: Failed to init semaphore");
  return 0;
 }

 m->path = info->path ? bstrdup(info->path) : ((void*)0);
 m->format_name = info->format ? bstrdup(info->format) : ((void*)0);
 m->hw = info->hardware_decoding;

 if (pthread_create(&m->thread, ((void*)0), mp_media_thread_start, m) != 0) {
  blog(LOG_WARNING, "MP: Could not create media thread");
  return 0;
 }

 m->thread_valid = 1;
 return 1;
}
