
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_event_t ;


 int os_event_signal (int *) ;

__attribute__((used)) static void clear_queue_signal(void *p_event)
{
 os_event_t *event = p_event;
 os_event_signal(event);
}
