
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * CompoundAffixFlags; int * firstfree; int * Spell; int * buildCxt; } ;
typedef TYPE_1__ IspellDict ;


 int MemoryContextDelete (int *) ;

void
NIFinishBuild(IspellDict *Conf)
{

 MemoryContextDelete(Conf->buildCxt);

 Conf->buildCxt = ((void*)0);
 Conf->Spell = ((void*)0);
 Conf->firstfree = ((void*)0);
 Conf->CompoundAffixFlags = ((void*)0);
}
