
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_segment; int closing; int rotating; int segment; int opening; int lock; scalar_t__ open; int next_path; } ;
typedef TYPE_1__ EncoderState ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int snprintf (int ,int,char*,char const*) ;

void encoder_rotate(EncoderState *s, const char* new_path, int new_segment) {
  pthread_mutex_lock(&s->lock);
  snprintf(s->next_path, sizeof(s->next_path), "%s", new_path);
  s->next_segment = new_segment;
  if (s->open) {
    if (s->next_segment == -1) {
      s->closing = 1;
    } else {
      s->rotating = 1;
    }
  } else {
    s->segment = s->next_segment;
    s->opening = 1;
  }
  pthread_mutex_unlock(&s->lock);
}
