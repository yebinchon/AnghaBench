
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headKnownAssignedXids; int tailKnownAssignedXids; int numKnownAssignedXids; } ;
typedef TYPE_1__ ProcArrayStruct ;


 int * KnownAssignedXids ;
 int* KnownAssignedXidsValid ;
 int PROCARRAY_MAXPROCS ;
 TYPE_1__* procArray ;

__attribute__((used)) static void
KnownAssignedXidsCompress(bool force)
{
 ProcArrayStruct *pArray = procArray;
 int head,
    tail;
 int compress_index;
 int i;


 head = pArray->headKnownAssignedXids;
 tail = pArray->tailKnownAssignedXids;

 if (!force)
 {
  int nelements = head - tail;

  if (nelements < 4 * PROCARRAY_MAXPROCS ||
   nelements < 2 * pArray->numKnownAssignedXids)
   return;
 }





 compress_index = 0;
 for (i = tail; i < head; i++)
 {
  if (KnownAssignedXidsValid[i])
  {
   KnownAssignedXids[compress_index] = KnownAssignedXids[i];
   KnownAssignedXidsValid[compress_index] = 1;
   compress_index++;
  }
 }

 pArray->tailKnownAssignedXids = 0;
 pArray->headKnownAssignedXids = compress_index;
}
