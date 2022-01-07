
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int randstate; } ;
struct TYPE_4__ {int targrows; int samplerows; int numrows; int rowstoskip; int temp_cxt; int retrieved_attrs; int attinmeta; int rel; int * rows; int anl_cxt; TYPE_2__ rstate; } ;
typedef TYPE_1__ PgFdwAnalyzeState ;
typedef int PGresult ;
typedef int MemoryContext ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 int heap_freetuple (int ) ;
 int make_tuple_from_result_row (int *,int,int ,int ,int ,int *,int ) ;
 int reservoir_get_next_S (TYPE_2__*,int,int) ;
 int sampler_random_fract (int ) ;

__attribute__((used)) static void
analyze_row_processor(PGresult *res, int row, PgFdwAnalyzeState *astate)
{
 int targrows = astate->targrows;
 int pos;
 MemoryContext oldcontext;


 astate->samplerows += 1;





 if (astate->numrows < targrows)
 {

  pos = astate->numrows++;
 }
 else
 {





  if (astate->rowstoskip < 0)
   astate->rowstoskip = reservoir_get_next_S(&astate->rstate, astate->samplerows, targrows);

  if (astate->rowstoskip <= 0)
  {

   pos = (int) (targrows * sampler_random_fract(astate->rstate.randstate));
   Assert(pos >= 0 && pos < targrows);
   heap_freetuple(astate->rows[pos]);
  }
  else
  {

   pos = -1;
  }

  astate->rowstoskip -= 1;
 }

 if (pos >= 0)
 {




  oldcontext = MemoryContextSwitchTo(astate->anl_cxt);

  astate->rows[pos] = make_tuple_from_result_row(res, row,
                astate->rel,
                astate->attinmeta,
                astate->retrieved_attrs,
                ((void*)0),
                astate->temp_cxt);

  MemoryContextSwitchTo(oldcontext);
 }
}
