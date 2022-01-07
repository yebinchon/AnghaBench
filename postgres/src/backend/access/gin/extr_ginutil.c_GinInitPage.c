
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int rightlink; int flags; } ;
typedef int Size ;
typedef int Page ;
typedef int GinPageOpaqueData ;
typedef TYPE_1__* GinPageOpaque ;


 TYPE_1__* GinPageGetOpaque (int ) ;
 int InvalidBlockNumber ;
 int PageInit (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
GinInitPage(Page page, uint32 f, Size pageSize)
{
 GinPageOpaque opaque;

 PageInit(page, pageSize, sizeof(GinPageOpaqueData));

 opaque = GinPageGetOpaque(page);
 memset(opaque, 0, sizeof(GinPageOpaqueData));
 opaque->flags = f;
 opaque->rightlink = InvalidBlockNumber;
}
