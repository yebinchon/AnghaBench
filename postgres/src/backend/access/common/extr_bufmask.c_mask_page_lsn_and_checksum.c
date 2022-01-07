
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_2__ {scalar_t__ pd_checksum; int pd_lsn; } ;
typedef TYPE_1__* PageHeader ;
typedef int Page ;


 scalar_t__ MASK_MARKER ;
 int PageXLogRecPtrSet (int ,int ) ;

void
mask_page_lsn_and_checksum(Page page)
{
 PageHeader phdr = (PageHeader) page;

 PageXLogRecPtrSet(phdr->pd_lsn, (uint64) MASK_MARKER);
 phdr->pd_checksum = MASK_MARKER;
}
