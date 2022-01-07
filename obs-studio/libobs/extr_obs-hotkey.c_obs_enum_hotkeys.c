
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_hotkey_internal_enum_forward {void* member_1; int member_0; } ;
typedef int obs_hotkey_enum_func ;


 int enum_hotkey ;
 int enum_hotkeys (int ,struct obs_hotkey_internal_enum_forward*) ;
 int lock () ;
 int unlock () ;

void obs_enum_hotkeys(obs_hotkey_enum_func func, void *data)
{
 struct obs_hotkey_internal_enum_forward forwarder = {func, data};
 if (!lock())
  return;

 enum_hotkeys(enum_hotkey, &forwarder);
 unlock();
}
