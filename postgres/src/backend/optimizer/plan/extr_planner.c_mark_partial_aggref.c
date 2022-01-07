
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aggtranstype; scalar_t__ aggsplit; scalar_t__ aggtype; } ;
typedef TYPE_1__ Aggref ;
typedef scalar_t__ AggSplit ;


 scalar_t__ AGGSPLIT_SIMPLE ;
 int Assert (int) ;
 scalar_t__ BYTEAOID ;
 scalar_t__ DO_AGGSPLIT_SERIALIZE (scalar_t__) ;
 scalar_t__ DO_AGGSPLIT_SKIPFINAL (scalar_t__) ;
 scalar_t__ INTERNALOID ;
 int OidIsValid (scalar_t__) ;

void
mark_partial_aggref(Aggref *agg, AggSplit aggsplit)
{

 Assert(OidIsValid(agg->aggtranstype));

 Assert(agg->aggsplit == AGGSPLIT_SIMPLE);


 agg->aggsplit = aggsplit;






 if (DO_AGGSPLIT_SKIPFINAL(aggsplit))
 {
  if (agg->aggtranstype == INTERNALOID && DO_AGGSPLIT_SERIALIZE(aggsplit))
   agg->aggtype = BYTEAOID;
  else
   agg->aggtype = agg->aggtranstype;
 }
}
