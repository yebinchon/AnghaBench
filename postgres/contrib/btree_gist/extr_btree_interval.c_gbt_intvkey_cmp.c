
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ intvKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (int *) ;
 int interval_cmp ;

__attribute__((used)) static int
gbt_intvkey_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 intvKEY *ia = (intvKEY *) (((const Nsrt *) a)->t);
 intvKEY *ib = (intvKEY *) (((const Nsrt *) b)->t);
 int res;

 res = DatumGetInt32(DirectFunctionCall2(interval_cmp, IntervalPGetDatum(&ia->lower), IntervalPGetDatum(&ib->lower)));
 if (res == 0)
  return DatumGetInt32(DirectFunctionCall2(interval_cmp, IntervalPGetDatum(&ia->upper), IntervalPGetDatum(&ib->upper)));

 return res;
}
