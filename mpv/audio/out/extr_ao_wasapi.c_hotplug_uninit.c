
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int CoUninitialize () ;
 int MP_DBG (struct ao*,char*) ;
 int wasapi_change_uninit (struct ao*) ;

__attribute__((used)) static void hotplug_uninit(struct ao *ao)
{
    MP_DBG(ao, "Hotplug uninit\n");
    wasapi_change_uninit(ao);
    CoUninitialize();
}
