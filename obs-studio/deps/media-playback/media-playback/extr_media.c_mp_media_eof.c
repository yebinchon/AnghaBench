
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int frame_ready; } ;
struct TYPE_7__ {int frame_ready; } ;
struct TYPE_8__ {int looping; int active; int stopping; int mutex; TYPE_1__ a; int has_audio; TYPE_2__ v; int has_video; } ;
typedef TYPE_3__ mp_media_t ;


 int mp_media_reset (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline bool mp_media_eof(mp_media_t *m)
{
 bool v_ended = !m->has_video || !m->v.frame_ready;
 bool a_ended = !m->has_audio || !m->a.frame_ready;
 bool eof = v_ended && a_ended;

 if (eof) {
  bool looping;

  pthread_mutex_lock(&m->mutex);
  looping = m->looping;
  if (!looping) {
   m->active = 0;
   m->stopping = 1;
  }
  pthread_mutex_unlock(&m->mutex);

  mp_media_reset(m);
 }

 return eof;
}
