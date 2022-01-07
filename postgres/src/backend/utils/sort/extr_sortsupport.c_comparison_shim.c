
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int isnull; TYPE_2__* args; } ;
struct TYPE_7__ {int fn_oid; } ;
struct TYPE_10__ {TYPE_1__ flinfo; TYPE_6__ fcinfo; } ;
struct TYPE_9__ {scalar_t__ ssup_extra; } ;
struct TYPE_8__ {int value; } ;
typedef TYPE_3__* SortSupport ;
typedef TYPE_4__ SortShimExtra ;
typedef int Datum ;


 int ERROR ;
 int FunctionCallInvoke (TYPE_6__*) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static int
comparison_shim(Datum x, Datum y, SortSupport ssup)
{
 SortShimExtra *extra = (SortShimExtra *) ssup->ssup_extra;
 Datum result;

 extra->fcinfo.args[0].value = x;
 extra->fcinfo.args[1].value = y;


 extra->fcinfo.isnull = 0;

 result = FunctionCallInvoke(&extra->fcinfo);


 if (extra->fcinfo.isnull)
  elog(ERROR, "function %u returned NULL", extra->flinfo.fn_oid);

 return result;
}
