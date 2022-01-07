
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int Tuplesortstate ;
struct TYPE_13__ {long spaceUsed; int spaceType; int sortMethod; } ;
typedef TYPE_2__ TuplesortInstrumentation ;
struct TYPE_15__ {scalar_t__ format; int indent; int str; int analyze; } ;
struct TYPE_14__ {TYPE_1__* shared_info; int * tuplesortstate; scalar_t__ sort_Done; } ;
struct TYPE_12__ {int num_workers; TYPE_2__* sinstrument; } ;
typedef TYPE_3__ SortState ;
typedef TYPE_4__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainCloseGroup (char*,char*,int,TYPE_4__*) ;
 int ExplainOpenGroup (char*,char*,int,TYPE_4__*) ;
 int ExplainPropertyInteger (char*,char*,long,TYPE_4__*) ;
 int ExplainPropertyText (char*,char const*,TYPE_4__*) ;
 int SORT_TYPE_STILL_IN_PROGRESS ;
 int appendStringInfo (int ,char*,...) ;
 int appendStringInfoSpaces (int ,int) ;
 int tuplesort_get_stats (int *,TYPE_2__*) ;
 char* tuplesort_method_name (int ) ;
 char* tuplesort_space_type_name (int ) ;

__attribute__((used)) static void
show_sort_info(SortState *sortstate, ExplainState *es)
{
 if (!es->analyze)
  return;

 if (sortstate->sort_Done && sortstate->tuplesortstate != ((void*)0))
 {
  Tuplesortstate *state = (Tuplesortstate *) sortstate->tuplesortstate;
  TuplesortInstrumentation stats;
  const char *sortMethod;
  const char *spaceType;
  long spaceUsed;

  tuplesort_get_stats(state, &stats);
  sortMethod = tuplesort_method_name(stats.sortMethod);
  spaceType = tuplesort_space_type_name(stats.spaceType);
  spaceUsed = stats.spaceUsed;

  if (es->format == EXPLAIN_FORMAT_TEXT)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfo(es->str, "Sort Method: %s  %s: %ldkB\n",
        sortMethod, spaceType, spaceUsed);
  }
  else
  {
   ExplainPropertyText("Sort Method", sortMethod, es);
   ExplainPropertyInteger("Sort Space Used", "kB", spaceUsed, es);
   ExplainPropertyText("Sort Space Type", spaceType, es);
  }
 }

 if (sortstate->shared_info != ((void*)0))
 {
  int n;
  bool opened_group = 0;

  for (n = 0; n < sortstate->shared_info->num_workers; n++)
  {
   TuplesortInstrumentation *sinstrument;
   const char *sortMethod;
   const char *spaceType;
   long spaceUsed;

   sinstrument = &sortstate->shared_info->sinstrument[n];
   if (sinstrument->sortMethod == SORT_TYPE_STILL_IN_PROGRESS)
    continue;
   sortMethod = tuplesort_method_name(sinstrument->sortMethod);
   spaceType = tuplesort_space_type_name(sinstrument->spaceType);
   spaceUsed = sinstrument->spaceUsed;

   if (es->format == EXPLAIN_FORMAT_TEXT)
   {
    appendStringInfoSpaces(es->str, es->indent * 2);
    appendStringInfo(es->str,
         "Worker %d:  Sort Method: %s  %s: %ldkB\n",
         n, sortMethod, spaceType, spaceUsed);
   }
   else
   {
    if (!opened_group)
    {
     ExplainOpenGroup("Workers", "Workers", 0, es);
     opened_group = 1;
    }
    ExplainOpenGroup("Worker", ((void*)0), 1, es);
    ExplainPropertyInteger("Worker Number", ((void*)0), n, es);
    ExplainPropertyText("Sort Method", sortMethod, es);
    ExplainPropertyInteger("Sort Space Used", "kB", spaceUsed, es);
    ExplainPropertyText("Sort Space Type", spaceType, es);
    ExplainCloseGroup("Worker", ((void*)0), 1, es);
   }
  }
  if (opened_group)
   ExplainCloseGroup("Workers", "Workers", 0, es);
 }
}
