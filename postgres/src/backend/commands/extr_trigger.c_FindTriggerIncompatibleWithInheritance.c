
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numtriggers; TYPE_2__* triggers; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_5__ {char const* tgname; int * tgnewtable; int * tgoldtable; } ;
typedef TYPE_2__ Trigger ;



const char *
FindTriggerIncompatibleWithInheritance(TriggerDesc *trigdesc)
{
 if (trigdesc != ((void*)0))
 {
  int i;

  for (i = 0; i < trigdesc->numtriggers; ++i)
  {
   Trigger *trigger = &trigdesc->triggers[i];

   if (trigger->tgoldtable != ((void*)0) || trigger->tgnewtable != ((void*)0))
    return trigger->tgname;
  }
 }

 return ((void*)0);
}
