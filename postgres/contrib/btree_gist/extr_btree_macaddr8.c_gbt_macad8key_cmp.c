
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ mac8KEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Macaddr8PGetDatum (int *) ;
 int macaddr8_cmp ;

__attribute__((used)) static int
gbt_macad8key_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 mac8KEY *ia = (mac8KEY *) (((const Nsrt *) a)->t);
 mac8KEY *ib = (mac8KEY *) (((const Nsrt *) b)->t);
 int res;

 res = DatumGetInt32(DirectFunctionCall2(macaddr8_cmp, Macaddr8PGetDatum(&ia->lower), Macaddr8PGetDatum(&ib->lower)));
 if (res == 0)
  return DatumGetInt32(DirectFunctionCall2(macaddr8_cmp, Macaddr8PGetDatum(&ia->upper), Macaddr8PGetDatum(&ib->upper)));

 return res;
}
