
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ exact_pages; scalar_t__ lossy_pages; } ;
struct TYPE_6__ {scalar_t__ format; int indent; int str; } ;
typedef TYPE_1__ ExplainState ;
typedef TYPE_2__ BitmapHeapScanState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainPropertyInteger (char*,int *,scalar_t__,TYPE_1__*) ;
 int appendStringInfo (int ,char*,scalar_t__) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
show_tidbitmap_info(BitmapHeapScanState *planstate, ExplainState *es)
{
 if (es->format != EXPLAIN_FORMAT_TEXT)
 {
  ExplainPropertyInteger("Exact Heap Blocks", ((void*)0),
          planstate->exact_pages, es);
  ExplainPropertyInteger("Lossy Heap Blocks", ((void*)0),
          planstate->lossy_pages, es);
 }
 else
 {
  if (planstate->exact_pages > 0 || planstate->lossy_pages > 0)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfoString(es->str, "Heap Blocks:");
   if (planstate->exact_pages > 0)
    appendStringInfo(es->str, " exact=%ld", planstate->exact_pages);
   if (planstate->lossy_pages > 0)
    appendStringInfo(es->str, " lossy=%ld", planstate->lossy_pages);
   appendStringInfoChar(es->str, '\n');
  }
 }
}
