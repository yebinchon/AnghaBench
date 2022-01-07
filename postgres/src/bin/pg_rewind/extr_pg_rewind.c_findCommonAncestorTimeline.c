
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_4__ {scalar_t__ tli; scalar_t__ begin; int end; } ;
typedef TYPE_1__ TimeLineHistoryEntry ;
struct TYPE_5__ {scalar_t__ tli; scalar_t__ begin; int end; } ;


 int ControlFile_source ;
 int ControlFile_target ;
 int Min (int,int) ;
 int MinXLogRecPtr (int ,int ) ;
 void* getTimelineHistory (int *,int*) ;
 int pg_fatal (char*) ;
 int pg_free (TYPE_1__*) ;
 TYPE_2__* targetHistory ;
 int targetNentries ;

__attribute__((used)) static void
findCommonAncestorTimeline(XLogRecPtr *recptr, int *tliIndex)
{
 TimeLineHistoryEntry *sourceHistory;
 int sourceNentries;
 int i,
    n;


 sourceHistory = getTimelineHistory(&ControlFile_source, &sourceNentries);
 targetHistory = getTimelineHistory(&ControlFile_target, &targetNentries);
 n = Min(sourceNentries, targetNentries);
 for (i = 0; i < n; i++)
 {
  if (sourceHistory[i].tli != targetHistory[i].tli ||
   sourceHistory[i].begin != targetHistory[i].begin)
   break;
 }

 if (i > 0)
 {
  i--;
  *recptr = MinXLogRecPtr(sourceHistory[i].end, targetHistory[i].end);
  *tliIndex = i;

  pg_free(sourceHistory);
  return;
 }
 else
 {
  pg_fatal("could not find common ancestor of the source and target cluster's timelines");
 }
}
