
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int gist_page_id; int flags; int rightlink; } ;
typedef int Size ;
typedef int Page ;
typedef int GISTPageOpaqueData ;
typedef TYPE_1__* GISTPageOpaque ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int GIST_PAGE_ID ;
 TYPE_1__* GistPageGetOpaque (int ) ;
 int InvalidBlockNumber ;
 int PageInit (int ,int ,int) ;

void
GISTInitBuffer(Buffer b, uint32 f)
{
 GISTPageOpaque opaque;
 Page page;
 Size pageSize;

 pageSize = BufferGetPageSize(b);
 page = BufferGetPage(b);
 PageInit(page, pageSize, sizeof(GISTPageOpaqueData));

 opaque = GistPageGetOpaque(page);


 opaque->rightlink = InvalidBlockNumber;
 opaque->flags = f;
 opaque->gist_page_id = GIST_PAGE_ID;
}
