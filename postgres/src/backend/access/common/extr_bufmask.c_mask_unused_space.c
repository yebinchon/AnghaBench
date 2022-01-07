
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd_lower; int pd_upper; int pd_special; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;


 int BLCKSZ ;
 int ERROR ;
 int MASK_MARKER ;
 int SizeOfPageHeaderData ;
 int elog (int ,char*,int,int,int) ;
 int memset (scalar_t__,int ,int) ;

void
mask_unused_space(Page page)
{
 int pd_lower = ((PageHeader) page)->pd_lower;
 int pd_upper = ((PageHeader) page)->pd_upper;
 int pd_special = ((PageHeader) page)->pd_special;


 if (pd_lower > pd_upper || pd_special < pd_upper ||
  pd_lower < SizeOfPageHeaderData || pd_special > BLCKSZ)
 {
  elog(ERROR, "invalid page pd_lower %u pd_upper %u pd_special %u\n",
    pd_lower, pd_upper, pd_special);
 }

 memset(page + pd_lower, MASK_MARKER, pd_upper - pd_lower);
}
