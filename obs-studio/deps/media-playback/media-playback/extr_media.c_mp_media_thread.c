
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int active; int reset; int kill; scalar_t__ has_audio; scalar_t__ has_video; int mutex; int sem; } ;
typedef TYPE_1__ mp_media_t ;


 int init_avformat (TYPE_1__*) ;
 int mp_media_calc_next_ns (TYPE_1__*) ;
 scalar_t__ mp_media_eof (TYPE_1__*) ;
 int mp_media_next_audio (TYPE_1__*) ;
 int mp_media_next_video (TYPE_1__*,int) ;
 int mp_media_prepare_frames (TYPE_1__*) ;
 int mp_media_reset (TYPE_1__*) ;
 int mp_media_sleepto (TYPE_1__*) ;
 scalar_t__ os_sem_wait (int ) ;
 int os_set_thread_name (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline bool mp_media_thread(mp_media_t *m)
{
 os_set_thread_name("mp_media_thread");

 if (!init_avformat(m)) {
  return 0;
 }
 if (!mp_media_reset(m)) {
  return 0;
 }

 for (;;) {
  bool reset, kill, is_active;
  bool timeout = 0;

  pthread_mutex_lock(&m->mutex);
  is_active = m->active;
  pthread_mutex_unlock(&m->mutex);

  if (!is_active) {
   if (os_sem_wait(m->sem) < 0)
    return 0;
  } else {
   timeout = mp_media_sleepto(m);
  }

  pthread_mutex_lock(&m->mutex);

  reset = m->reset;
  kill = m->kill;
  m->reset = 0;
  m->kill = 0;

  pthread_mutex_unlock(&m->mutex);

  if (kill) {
   break;
  }
  if (reset) {
   mp_media_reset(m);
   continue;
  }


  if (is_active && !timeout) {
   if (m->has_video)
    mp_media_next_video(m, 0);
   if (m->has_audio)
    mp_media_next_audio(m);

   if (!mp_media_prepare_frames(m))
    return 0;
   if (mp_media_eof(m))
    continue;

   mp_media_calc_next_ns(m);
  }
 }

 return 1;
}
