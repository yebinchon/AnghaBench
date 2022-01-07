
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_id ;


 int fixup_pointers () ;
 int lock () ;
 int unlock () ;
 scalar_t__ unregister_hotkey (int ) ;

void obs_hotkey_unregister(obs_hotkey_id id)
{
 if (!lock())
  return;
 if (unregister_hotkey(id))
  fixup_pointers();
 unlock();
}
