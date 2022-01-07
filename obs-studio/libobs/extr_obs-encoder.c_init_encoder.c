
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type_data; int (* get_defaults2 ) (int ,int ) ;int (* get_defaults ) (int ) ;} ;
struct TYPE_6__ {int settings; } ;
struct TYPE_4__ {int mutex; } ;
struct obs_encoder {TYPE_2__ orig_info; TYPE_3__ context; TYPE_1__ pause; int outputs_mutex; int callbacks_mutex; int init_mutex; } ;
typedef int pthread_mutexattr_t ;
typedef int obs_data_t ;


 int OBS_OBJ_TYPE_ENCODER ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int obs_context_data_init (TYPE_3__*,int ,int *,char const*,int *,int) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static bool init_encoder(struct obs_encoder *encoder, const char *name,
    obs_data_t *settings, obs_data_t *hotkey_data)
{
 pthread_mutexattr_t attr;

 pthread_mutex_init_value(&encoder->init_mutex);
 pthread_mutex_init_value(&encoder->callbacks_mutex);
 pthread_mutex_init_value(&encoder->outputs_mutex);
 pthread_mutex_init_value(&encoder->pause.mutex);

 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return 0;
 if (!obs_context_data_init(&encoder->context, OBS_OBJ_TYPE_ENCODER,
       settings, name, hotkey_data, 0))
  return 0;
 if (pthread_mutex_init(&encoder->init_mutex, &attr) != 0)
  return 0;
 if (pthread_mutex_init(&encoder->callbacks_mutex, &attr) != 0)
  return 0;
 if (pthread_mutex_init(&encoder->outputs_mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&encoder->pause.mutex, ((void*)0)) != 0)
  return 0;

 if (encoder->orig_info.get_defaults) {
  encoder->orig_info.get_defaults(encoder->context.settings);
 }
 if (encoder->orig_info.get_defaults2) {
  encoder->orig_info.get_defaults2(encoder->context.settings,
       encoder->orig_info.type_data);
 }

 return 1;
}
