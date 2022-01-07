
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OffsetNumber ;
typedef int GinState ;
typedef int GinNullCategory ;
typedef int Datum ;


 int ginCompareEntries (int *,scalar_t__,int ,int ,int ,int ) ;

int
ginCompareAttEntries(GinState *ginstate,
      OffsetNumber attnuma, Datum a, GinNullCategory categorya,
      OffsetNumber attnumb, Datum b, GinNullCategory categoryb)
{

 if (attnuma != attnumb)
  return (attnuma < attnumb) ? -1 : 1;

 return ginCompareEntries(ginstate, attnuma, a, categorya, b, categoryb);
}
