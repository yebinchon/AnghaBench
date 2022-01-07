
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nAffixData; } ;
typedef TYPE_1__ IspellDict ;


 scalar_t__ IsAffixFlagInUse (TYPE_1__*,int,char*) ;

__attribute__((used)) static bool
isAffixInUse(IspellDict *Conf, char *affixflag)
{
 int i;

 for (i = 0; i < Conf->nAffixData; i++)
  if (IsAffixFlagInUse(Conf, i, affixflag))
   return 1;

 return 0;
}
