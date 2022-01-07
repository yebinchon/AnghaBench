
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_event_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int EINVAL ;
 int INFINITE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

int os_event_wait(os_event_t *event)
{
 DWORD code;

 if (!event)
  return EINVAL;

 code = WaitForSingleObject((HANDLE)event, INFINITE);
 if (code != WAIT_OBJECT_0)
  return EINVAL;

 return 0;
}
