
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* peragg; } ;
struct TYPE_7__ {int transno; scalar_t__ shareable; TYPE_1__* aggref; } ;
struct TYPE_6__ {scalar_t__ inputcollid; scalar_t__ aggtranstype; scalar_t__ aggstar; scalar_t__ aggvariadic; scalar_t__ aggkind; scalar_t__ aggfnoid; scalar_t__ aggtype; scalar_t__ aggcollid; int aggdirectargs; int aggfilter; int aggdistinct; int aggorder; int args; } ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ Aggref ;
typedef TYPE_2__* AggStatePerAgg ;
typedef TYPE_3__ AggState ;


 int * NIL ;
 scalar_t__ contain_volatile_functions (int *) ;
 scalar_t__ equal (int ,int ) ;
 int * lappend_int (int *,int ) ;
 int list_free (int *) ;

__attribute__((used)) static int
find_compatible_peragg(Aggref *newagg, AggState *aggstate,
        int lastaggno, List **same_input_transnos)
{
 int aggno;
 AggStatePerAgg peraggs;

 *same_input_transnos = NIL;


 if (contain_volatile_functions((Node *) newagg))
  return -1;

 peraggs = aggstate->peragg;
 for (aggno = 0; aggno <= lastaggno; aggno++)
 {
  AggStatePerAgg peragg;
  Aggref *existingRef;

  peragg = &peraggs[aggno];
  existingRef = peragg->aggref;


  if (newagg->inputcollid != existingRef->inputcollid ||
   newagg->aggtranstype != existingRef->aggtranstype ||
   newagg->aggstar != existingRef->aggstar ||
   newagg->aggvariadic != existingRef->aggvariadic ||
   newagg->aggkind != existingRef->aggkind ||
   !equal(newagg->args, existingRef->args) ||
   !equal(newagg->aggorder, existingRef->aggorder) ||
   !equal(newagg->aggdistinct, existingRef->aggdistinct) ||
   !equal(newagg->aggfilter, existingRef->aggfilter))
   continue;


  if (newagg->aggfnoid == existingRef->aggfnoid &&
   newagg->aggtype == existingRef->aggtype &&
   newagg->aggcollid == existingRef->aggcollid &&
   equal(newagg->aggdirectargs, existingRef->aggdirectargs))
  {
   list_free(*same_input_transnos);
   *same_input_transnos = NIL;
   return aggno;
  }
  if (peragg->shareable)
   *same_input_transnos = lappend_int(*same_input_transnos,
              peragg->transno);
 }

 return -1;
}
