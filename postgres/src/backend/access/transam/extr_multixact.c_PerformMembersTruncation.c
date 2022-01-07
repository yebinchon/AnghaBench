
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiXactOffset ;


 int DEBUG2 ;
 void* MXOffsetToMemberSegment (int ) ;
 int MaxMultiXactOffset ;
 int MultiXactMemberCtl ;
 int SlruDeleteSegment (int ,int) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
PerformMembersTruncation(MultiXactOffset oldestOffset, MultiXactOffset newOldestOffset)
{
 const int maxsegment = MXOffsetToMemberSegment(MaxMultiXactOffset);
 int startsegment = MXOffsetToMemberSegment(oldestOffset);
 int endsegment = MXOffsetToMemberSegment(newOldestOffset);
 int segment = startsegment;





 while (segment != endsegment)
 {
  elog(DEBUG2, "truncating multixact members segment %x", segment);
  SlruDeleteSegment(MultiXactMemberCtl, segment);


  if (segment == maxsegment)
   segment = 0;
  else
   segment += 1;
 }
}
