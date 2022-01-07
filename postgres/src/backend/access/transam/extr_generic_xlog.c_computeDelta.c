
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {scalar_t__ deltaLen; int delta; } ;
struct TYPE_6__ {int pd_lower; int pd_upper; } ;
typedef TYPE_1__* PageHeader ;
typedef TYPE_2__ PageData ;
typedef scalar_t__ Page ;
typedef TYPE_3__ PGAlignedBlock ;


 int BLCKSZ ;
 int ERROR ;
 scalar_t__ XLOG_DEBUG ;
 int applyPageRedo (scalar_t__,int ,scalar_t__) ;
 int computeRegionDelta (TYPE_2__*,scalar_t__,scalar_t__,int,int,int,int) ;
 int elog (int ,char*) ;
 scalar_t__ memcmp (scalar_t__,scalar_t__,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
computeDelta(PageData *pageData, Page curpage, Page targetpage)
{
 int targetLower = ((PageHeader) targetpage)->pd_lower,
    targetUpper = ((PageHeader) targetpage)->pd_upper,
    curLower = ((PageHeader) curpage)->pd_lower,
    curUpper = ((PageHeader) curpage)->pd_upper;

 pageData->deltaLen = 0;


 computeRegionDelta(pageData, curpage, targetpage,
        0, targetLower,
        0, curLower);

 computeRegionDelta(pageData, curpage, targetpage,
        targetUpper, BLCKSZ,
        curUpper, BLCKSZ);
}
