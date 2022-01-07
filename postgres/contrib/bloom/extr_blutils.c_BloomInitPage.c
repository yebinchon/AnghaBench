
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {int bloom_page_id; int flags; } ;
typedef int Page ;
typedef int BloomPageOpaqueData ;
typedef TYPE_1__* BloomPageOpaque ;


 int BLCKSZ ;
 int BLOOM_PAGE_ID ;
 TYPE_1__* BloomPageGetOpaque (int ) ;
 int PageInit (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
BloomInitPage(Page page, uint16 flags)
{
 BloomPageOpaque opaque;

 PageInit(page, BLCKSZ, sizeof(BloomPageOpaqueData));

 opaque = BloomPageGetOpaque(page);
 memset(opaque, 0, sizeof(BloomPageOpaqueData));
 opaque->flags = flags;
 opaque->bloom_page_id = BLOOM_PAGE_ID;
}
