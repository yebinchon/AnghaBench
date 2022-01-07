
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* args; } ;
struct TYPE_8__ {TYPE_5__ fcinfo; int flinfo; } ;
struct TYPE_7__ {int comparator; TYPE_3__* ssup_extra; int ssup_collation; int ssup_cxt; } ;
struct TYPE_6__ {int isnull; } ;
typedef TYPE_2__* SortSupport ;
typedef TYPE_3__ SortShimExtra ;
typedef int Oid ;


 int InitFunctionCallInfoData (TYPE_5__,int *,int,int ,int *,int *) ;
 scalar_t__ MemoryContextAlloc (int ,int ) ;
 int SizeForSortShimExtra (int) ;
 int comparison_shim ;
 int fmgr_info_cxt (int ,int *,int ) ;

void
PrepareSortSupportComparisonShim(Oid cmpFunc, SortSupport ssup)
{
 SortShimExtra *extra;

 extra = (SortShimExtra *) MemoryContextAlloc(ssup->ssup_cxt,
             SizeForSortShimExtra(2));


 fmgr_info_cxt(cmpFunc, &extra->flinfo, ssup->ssup_cxt);


 InitFunctionCallInfoData(extra->fcinfo, &extra->flinfo, 2,
        ssup->ssup_collation, ((void*)0), ((void*)0));
 extra->fcinfo.args[0].isnull = 0;
 extra->fcinfo.args[1].isnull = 0;

 ssup->ssup_extra = extra;
 ssup->comparator = comparison_shim;
}
