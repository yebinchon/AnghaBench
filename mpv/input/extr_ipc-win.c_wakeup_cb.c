
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* HANDLE ;


 int SetEvent (void*) ;

__attribute__((used)) static void wakeup_cb(void *d)
{
    HANDLE event = d;
    SetEvent(event);
}
