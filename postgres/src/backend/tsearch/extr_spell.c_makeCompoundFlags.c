
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int nAffixData; int * AffixData; } ;
typedef TYPE_1__ IspellDict ;


 int Assert (int) ;
 int FF_COMPOUNDFLAGMASK ;
 int getCompoundAffixFlagValue (TYPE_1__*,int ) ;

__attribute__((used)) static uint32
makeCompoundFlags(IspellDict *Conf, int affix)
{
 Assert(affix < Conf->nAffixData);

 return (getCompoundAffixFlagValue(Conf, Conf->AffixData[affix]) &
   FF_COMPOUNDFLAGMASK);
}
