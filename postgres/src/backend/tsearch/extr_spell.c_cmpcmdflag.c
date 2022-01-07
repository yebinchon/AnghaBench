
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i; int s; } ;
struct TYPE_4__ {scalar_t__ flagMode; TYPE_1__ flag; } ;
typedef TYPE_2__ CompoundAffixFlag ;


 int Assert (int) ;
 scalar_t__ FM_NUM ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
cmpcmdflag(const void *f1, const void *f2)
{
 CompoundAffixFlag *fv1 = (CompoundAffixFlag *) f1,
      *fv2 = (CompoundAffixFlag *) f2;

 Assert(fv1->flagMode == fv2->flagMode);

 if (fv1->flagMode == FM_NUM)
 {
  if (fv1->flag.i == fv2->flag.i)
   return 0;

  return (fv1->flag.i > fv2->flag.i) ? 1 : -1;
 }

 return strcmp(fv1->flag.s, fv2->flag.s);
}
