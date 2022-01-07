
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEvent (int ) ;
 int WINE_TRACE (char*) ;
 int kill_event ;

__attribute__((used)) static void KillService(void)
{
    WINE_TRACE("Killing service\n");
    SetEvent(kill_event);
}
