
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_2__ {int pd_upper; int pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;


 scalar_t__ BLCKSZ ;
 int MASK_MARKER ;
 scalar_t__ SizeOfPageHeaderData ;
 int memset (int *,int ,int) ;

void
mask_page_content(Page page)
{

 memset(page + SizeOfPageHeaderData, MASK_MARKER,
     BLCKSZ - SizeOfPageHeaderData);


 memset(&((PageHeader) page)->pd_lower, MASK_MARKER,
     sizeof(uint16));
 memset(&((PageHeader) page)->pd_upper, MASK_MARKER,
     sizeof(uint16));
}
