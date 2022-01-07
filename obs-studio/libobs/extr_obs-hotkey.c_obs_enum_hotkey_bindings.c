
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_binding_enum_func ;


 int enum_bindings (int ,void*) ;
 int lock () ;
 int unlock () ;

void obs_enum_hotkey_bindings(obs_hotkey_binding_enum_func func, void *data)
{
 if (!lock())
  return;

 enum_bindings(func, data);
 unlock();
}
