
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ timeKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int TimeADTGetDatumFast (int ) ;
 int time_cmp ;

__attribute__((used)) static int
gbt_timekey_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 timeKEY *ia = (timeKEY *) (((const Nsrt *) a)->t);
 timeKEY *ib = (timeKEY *) (((const Nsrt *) b)->t);
 int res;

 res = DatumGetInt32(DirectFunctionCall2(time_cmp, TimeADTGetDatumFast(ia->lower), TimeADTGetDatumFast(ib->lower)));
 if (res == 0)
  return DatumGetInt32(DirectFunctionCall2(time_cmp, TimeADTGetDatumFast(ia->upper), TimeADTGetDatumFast(ib->upper)));

 return res;
}
