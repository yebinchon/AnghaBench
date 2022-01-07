
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int mutex; int cond; } ;


 int av_free (struct ff_clock*) ;
 struct ff_clock* av_mallocz (int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

struct ff_clock *ff_clock_init(void)
{
 struct ff_clock *clock = av_mallocz(sizeof(struct ff_clock));

 if (clock == ((void*)0))
  return ((void*)0);

 if (pthread_mutex_init(&clock->mutex, ((void*)0)) != 0)
  goto fail;

 if (pthread_cond_init(&clock->cond, ((void*)0)) != 0)
  goto fail1;

 return clock;

fail1:
 pthread_mutex_destroy(&clock->mutex);
fail:
 av_free(clock);

 return ((void*)0);
}
