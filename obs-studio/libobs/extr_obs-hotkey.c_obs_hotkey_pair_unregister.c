
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_pair_id ;


 int fixup_pair_pointers () ;
 int lock () ;
 int unlock () ;
 scalar_t__ unregister_hotkey_pair (int ) ;

void obs_hotkey_pair_unregister(obs_hotkey_pair_id id)
{
 if (!lock())
  return;

 if (unregister_hotkey_pair(id))
  fixup_pair_pointers();

 unlock();
}
