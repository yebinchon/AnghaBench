
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ InvalidationChunk ;



__attribute__((used)) static void
AppendInvalidationMessageList(InvalidationChunk **destHdr,
         InvalidationChunk **srcHdr)
{
 InvalidationChunk *chunk = *srcHdr;

 if (chunk == ((void*)0))
  return;

 while (chunk->next != ((void*)0))
  chunk = chunk->next;

 chunk->next = *destHdr;

 *destHdr = *srcHdr;

 *srcHdr = ((void*)0);
}
