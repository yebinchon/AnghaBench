
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ tsKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int TimestampGetDatumFast (int ) ;
 int timestamp_cmp ;

__attribute__((used)) static int
gbt_tskey_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 tsKEY *ia = (tsKEY *) (((const Nsrt *) a)->t);
 tsKEY *ib = (tsKEY *) (((const Nsrt *) b)->t);
 int res;

 res = DatumGetInt32(DirectFunctionCall2(timestamp_cmp, TimestampGetDatumFast(ia->lower), TimestampGetDatumFast(ib->lower)));
 if (res == 0)
  return DatumGetInt32(DirectFunctionCall2(timestamp_cmp, TimestampGetDatumFast(ia->upper), TimestampGetDatumFast(ib->upper)));

 return res;
}
