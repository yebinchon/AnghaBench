
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_event_data {int manual; int signalled; int mutex; int cond; } ;
typedef struct os_event_data os_event_t ;
typedef enum os_event_type { ____Placeholder_os_event_type } os_event_type ;


 int OS_EVENT_TYPE_MANUAL ;
 int bfree (struct os_event_data*) ;
 struct os_event_data* bzalloc (int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;

int os_event_init(os_event_t **event, enum os_event_type type)
{
 int code = 0;

 struct os_event_data *data = bzalloc(sizeof(struct os_event_data));

 if ((code = pthread_mutex_init(&data->mutex, ((void*)0))) < 0) {
  bfree(data);
  return code;
 }

 if ((code = pthread_cond_init(&data->cond, ((void*)0))) < 0) {
  pthread_mutex_destroy(&data->mutex);
  bfree(data);
  return code;
 }

 data->manual = (type == OS_EVENT_TYPE_MANUAL);
 data->signalled = 0;
 *event = data;

 return 0;
}
