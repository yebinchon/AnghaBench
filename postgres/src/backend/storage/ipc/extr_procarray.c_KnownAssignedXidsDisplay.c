
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tailKnownAssignedXids; int headKnownAssignedXids; int numKnownAssignedXids; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ProcArrayStruct ;


 int * KnownAssignedXids ;
 scalar_t__* KnownAssignedXidsValid ;
 int appendStringInfo (TYPE_1__*,char*,int,int ) ;
 int elog (int,char*,int,int ,int,int,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (int ) ;
 TYPE_2__* procArray ;

__attribute__((used)) static void
KnownAssignedXidsDisplay(int trace_level)
{
 ProcArrayStruct *pArray = procArray;
 StringInfoData buf;
 int head,
    tail,
    i;
 int nxids = 0;

 tail = pArray->tailKnownAssignedXids;
 head = pArray->headKnownAssignedXids;

 initStringInfo(&buf);

 for (i = tail; i < head; i++)
 {
  if (KnownAssignedXidsValid[i])
  {
   nxids++;
   appendStringInfo(&buf, "[%d]=%u ", i, KnownAssignedXids[i]);
  }
 }

 elog(trace_level, "%d KnownAssignedXids (num=%d tail=%d head=%d) %s",
   nxids,
   pArray->numKnownAssignedXids,
   pArray->tailKnownAssignedXids,
   pArray->headKnownAssignedXids,
   buf.data);

 pfree(buf.data);
}
