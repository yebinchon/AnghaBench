
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nAffixData; char** AffixData; } ;
typedef TYPE_1__ IspellDict ;


 int Assert (int) ;
 int BUFSIZ ;
 int getNextFlagFromString (TYPE_1__*,char**,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static bool
IsAffixFlagInUse(IspellDict *Conf, int affix, const char *affixflag)
{
 char *flagcur;
 char flag[BUFSIZ];

 if (*affixflag == 0)
  return 1;

 Assert(affix < Conf->nAffixData);

 flagcur = Conf->AffixData[affix];

 while (*flagcur)
 {
  getNextFlagFromString(Conf, &flagcur, flag);

  if (strcmp(flag, affixflag) == 0)
   return 1;
 }


 return 0;
}
