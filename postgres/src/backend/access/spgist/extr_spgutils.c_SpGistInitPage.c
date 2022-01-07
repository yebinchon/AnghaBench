
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {int spgist_page_id; int flags; } ;
typedef int SpGistPageOpaqueData ;
typedef TYPE_1__* SpGistPageOpaque ;
typedef int Page ;


 int BLCKSZ ;
 int MAXALIGN (int) ;
 int PageInit (int ,int ,int ) ;
 int SPGIST_PAGE_ID ;
 TYPE_1__* SpGistPageGetOpaque (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
SpGistInitPage(Page page, uint16 f)
{
 SpGistPageOpaque opaque;

 PageInit(page, BLCKSZ, MAXALIGN(sizeof(SpGistPageOpaqueData)));
 opaque = SpGistPageGetOpaque(page);
 memset(opaque, 0, sizeof(SpGistPageOpaqueData));
 opaque->flags = f;
 opaque->spgist_page_id = SPGIST_PAGE_ID;
}
