
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_5__ {scalar_t__ buffer; scalar_t__ matchBitmap; scalar_t__ matchIterator; scalar_t__ list; } ;
struct TYPE_4__ {size_t totalentries; TYPE_2__** entries; scalar_t__ nkeys; int * keys; int keyCtx; } ;
typedef TYPE_1__* GinScanOpaque ;
typedef TYPE_2__* GinScanEntry ;


 scalar_t__ InvalidBuffer ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int pfree (scalar_t__) ;
 int tbm_end_iterate (scalar_t__) ;
 int tbm_free (scalar_t__) ;

void
ginFreeScanKeys(GinScanOpaque so)
{
 uint32 i;

 if (so->keys == ((void*)0))
  return;

 for (i = 0; i < so->totalentries; i++)
 {
  GinScanEntry entry = so->entries[i];

  if (entry->buffer != InvalidBuffer)
   ReleaseBuffer(entry->buffer);
  if (entry->list)
   pfree(entry->list);
  if (entry->matchIterator)
   tbm_end_iterate(entry->matchIterator);
  if (entry->matchBitmap)
   tbm_free(entry->matchBitmap);
 }

 MemoryContextResetAndDeleteChildren(so->keyCtx);

 so->keys = ((void*)0);
 so->nkeys = 0;
 so->entries = ((void*)0);
 so->totalentries = 0;
}
