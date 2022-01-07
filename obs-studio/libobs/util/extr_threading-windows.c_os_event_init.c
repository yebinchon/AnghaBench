
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_event_t ;
typedef enum os_event_type { ____Placeholder_os_event_type } os_event_type ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateEvent (int *,int,int ,int *) ;
 int FALSE ;
 int OS_EVENT_TYPE_MANUAL ;

int os_event_init(os_event_t **event, enum os_event_type type)
{
 HANDLE handle;

 handle = CreateEvent(((void*)0), (type == OS_EVENT_TYPE_MANUAL), FALSE, ((void*)0));
 if (!handle)
  return -1;

 *event = (os_event_t *)handle;
 return 0;
}
