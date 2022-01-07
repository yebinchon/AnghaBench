
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* obs_hotkey_atomic_update_func ) (void*) ;


 int lock () ;
 int unlock () ;

void obs_hotkey_update_atomic(obs_hotkey_atomic_update_func func, void *data)
{
 if (!lock())
  return;

 func(data);

 unlock();
}
