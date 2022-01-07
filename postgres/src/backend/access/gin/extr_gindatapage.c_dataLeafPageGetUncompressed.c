
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxoff; } ;
typedef int Page ;
typedef scalar_t__ ItemPointer ;


 int Assert (int) ;
 scalar_t__ GinDataPageGetData (int ) ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsCompressed (int ) ;

__attribute__((used)) static ItemPointer
dataLeafPageGetUncompressed(Page page, int *nitems)
{
 ItemPointer items;

 Assert(!GinPageIsCompressed(page));





 items = (ItemPointer) GinDataPageGetData(page);
 *nitems = GinPageGetOpaque(page)->maxoff;

 return items;
}
