
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_event_t ;
typedef int HANDLE ;


 int ResetEvent (int ) ;

void os_event_reset(os_event_t *event)
{
 if (!event)
  return;

 ResetEvent((HANDLE)event);
}
