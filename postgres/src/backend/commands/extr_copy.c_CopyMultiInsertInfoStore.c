
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int TupleTableSlot ;
struct TYPE_8__ {size_t nused; int * linenos; int ** slots; } ;
struct TYPE_7__ {int bufferedBytes; int bufferedTuples; } ;
struct TYPE_6__ {TYPE_3__* ri_CopyMultiInsertBuffer; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ CopyMultiInsertInfo ;
typedef TYPE_3__ CopyMultiInsertBuffer ;


 int Assert (int) ;

__attribute__((used)) static inline void
CopyMultiInsertInfoStore(CopyMultiInsertInfo *miinfo, ResultRelInfo *rri,
       TupleTableSlot *slot, int tuplen, uint64 lineno)
{
 CopyMultiInsertBuffer *buffer = rri->ri_CopyMultiInsertBuffer;

 Assert(buffer != ((void*)0));
 Assert(slot == buffer->slots[buffer->nused]);


 buffer->linenos[buffer->nused] = lineno;


 buffer->nused++;


 miinfo->bufferedTuples++;
 miinfo->bufferedBytes += tuplen;
}
