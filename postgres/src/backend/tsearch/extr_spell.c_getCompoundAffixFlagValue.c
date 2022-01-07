
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {int value; } ;
struct TYPE_8__ {int nCompoundAffixFlag; scalar_t__ CompoundAffixFlags; } ;
typedef TYPE_1__ IspellDict ;
typedef TYPE_2__ CompoundAffixFlag ;


 int BUFSIZ ;
 scalar_t__ bsearch (TYPE_2__*,void*,int ,int,int ) ;
 int cmpcmdflag ;
 int getNextFlagFromString (TYPE_1__*,char**,char*) ;
 int setCompoundAffixFlagValue (TYPE_1__*,TYPE_2__*,char*,int ) ;

__attribute__((used)) static int
getCompoundAffixFlagValue(IspellDict *Conf, char *s)
{
 uint32 flag = 0;
 CompoundAffixFlag *found,
    key;
 char sflag[BUFSIZ];
 char *flagcur;

 if (Conf->nCompoundAffixFlag == 0)
  return 0;

 flagcur = s;
 while (*flagcur)
 {
  getNextFlagFromString(Conf, &flagcur, sflag);
  setCompoundAffixFlagValue(Conf, &key, sflag, 0);

  found = (CompoundAffixFlag *)
   bsearch(&key, (void *) Conf->CompoundAffixFlags,
     Conf->nCompoundAffixFlag, sizeof(CompoundAffixFlag),
     cmpcmdflag);
  if (found != ((void*)0))
   flag |= found->value;
 }

 return flag;
}
