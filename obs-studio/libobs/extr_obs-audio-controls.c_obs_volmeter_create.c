
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_volmeter {int type; int callback_mutex; int mutex; } ;
typedef struct obs_volmeter obs_volmeter_t ;
typedef enum obs_fader_type { ____Placeholder_obs_fader_type } obs_fader_type ;


 struct obs_volmeter* bzalloc (int) ;
 int obs_volmeter_destroy (struct obs_volmeter*) ;
 int obs_volmeter_set_update_interval (struct obs_volmeter*,int) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;

obs_volmeter_t *obs_volmeter_create(enum obs_fader_type type)
{
 struct obs_volmeter *volmeter = bzalloc(sizeof(struct obs_volmeter));
 if (!volmeter)
  return ((void*)0);

 pthread_mutex_init_value(&volmeter->mutex);
 pthread_mutex_init_value(&volmeter->callback_mutex);
 if (pthread_mutex_init(&volmeter->mutex, ((void*)0)) != 0)
  goto fail;
 if (pthread_mutex_init(&volmeter->callback_mutex, ((void*)0)) != 0)
  goto fail;

 volmeter->type = type;

 obs_volmeter_set_update_interval(volmeter, 50);

 return volmeter;
fail:
 obs_volmeter_destroy(volmeter);
 return ((void*)0);
}
