
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_event_t ;


 int OS_EVENT_TYPE_AUTO ;
 int clear_queue_signal ;
 int defer_call_post (int ,int *) ;
 int os_event_destroy (int *) ;
 scalar_t__ os_event_init (int **,int ) ;
 int os_event_wait (int *) ;

__attribute__((used)) static void clear_call_queue(void)
{
 os_event_t *event;
 if (os_event_init(&event, OS_EVENT_TYPE_AUTO) != 0)
  return;

 defer_call_post(clear_queue_signal, event);

 os_event_wait(event);
 os_event_destroy(event);
}
