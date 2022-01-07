
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TM_Result ;
typedef int TM_FailureData ;
typedef int Snapshot ;
typedef int Relation ;
typedef int ItemPointer ;
typedef int CommandId ;


 int heap_delete (int ,int ,int ,int ,int,int *,int) ;

__attribute__((used)) static TM_Result
heapam_tuple_delete(Relation relation, ItemPointer tid, CommandId cid,
     Snapshot snapshot, Snapshot crosscheck, bool wait,
     TM_FailureData *tmfd, bool changingPart)
{





 return heap_delete(relation, tid, cid, crosscheck, wait, tmfd, changingPart);
}
