
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_21__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ fn_oid; } ;
struct TYPE_26__ {int partnatts; int strategy; TYPE_5__* stepcmpfuncs; int ppccontext; TYPE_21__* partsupfunc; } ;
struct TYPE_22__ {int step_id; } ;
struct TYPE_25__ {int nullkeys; int opstrategy; TYPE_1__ step; int cmpfns; int exprs; } ;
struct TYPE_24__ {int scan_default; int scan_null; int * bound_offsets; } ;
struct TYPE_23__ {scalar_t__ fn_oid; } ;
typedef TYPE_2__ PruneStepResult ;
typedef TYPE_3__ PartitionPruneStepOp ;
typedef TYPE_4__ PartitionPruneContext ;
typedef scalar_t__ Oid ;
typedef int ListCell ;
typedef TYPE_5__ FmgrInfo ;
typedef int Expr ;
typedef int Datum ;


 int Assert (int) ;
 int ERROR ;
 int OidIsValid (scalar_t__) ;
 int PARTITION_MAX_KEYS ;



 int PruneCxtStateIdx (int,int ,int) ;
 scalar_t__ bms_is_member (int,int ) ;
 int elog (int ,char*,int) ;
 int fmgr_info_copy (TYPE_5__*,TYPE_21__*,int ) ;
 int fmgr_info_cxt (scalar_t__,TYPE_5__*,int ) ;
 TYPE_2__* get_matching_hash_bounds (TYPE_4__*,int ,int *,int,TYPE_5__*,int ) ;
 TYPE_2__* get_matching_list_bounds (TYPE_4__*,int ,int ,int,TYPE_5__*,int ) ;
 TYPE_2__* get_matching_range_bounds (TYPE_4__*,int ,int *,int,TYPE_5__*,int ) ;
 int * lfirst (int *) ;
 scalar_t__ lfirst_oid (int *) ;
 int * list_head (int ) ;
 scalar_t__ list_length (int ) ;
 int * lnext (int ,int *) ;
 scalar_t__ palloc (int) ;
 int partkey_datum_from_expr (TYPE_4__*,int *,int,int *,int*) ;

__attribute__((used)) static PruneStepResult *
perform_pruning_base_step(PartitionPruneContext *context,
        PartitionPruneStepOp *opstep)
{
 ListCell *lc1,
      *lc2;
 int keyno,
    nvalues;
 Datum values[PARTITION_MAX_KEYS];
 FmgrInfo *partsupfunc;
 int stateidx;




 Assert(list_length(opstep->exprs) == list_length(opstep->cmpfns));

 nvalues = 0;
 lc1 = list_head(opstep->exprs);
 lc2 = list_head(opstep->cmpfns);





 for (keyno = 0; keyno < context->partnatts; keyno++)
 {





  if (bms_is_member(keyno, opstep->nullkeys))
   continue;





  if (keyno > nvalues && context->strategy == 128)
   break;

  if (lc1 != ((void*)0))
  {
   Expr *expr;
   Datum datum;
   bool isnull;
   Oid cmpfn;

   expr = lfirst(lc1);
   stateidx = PruneCxtStateIdx(context->partnatts,
          opstep->step.step_id, keyno);
   partkey_datum_from_expr(context, expr, stateidx,
         &datum, &isnull);






   if (isnull)
   {
    PruneStepResult *result;

    result = (PruneStepResult *) palloc(sizeof(PruneStepResult));
    result->bound_offsets = ((void*)0);
    result->scan_default = 0;
    result->scan_null = 0;

    return result;
   }


   cmpfn = lfirst_oid(lc2);
   Assert(OidIsValid(cmpfn));
   if (cmpfn != context->stepcmpfuncs[stateidx].fn_oid)
   {






    if (cmpfn == context->partsupfunc[keyno].fn_oid)
     fmgr_info_copy(&context->stepcmpfuncs[stateidx],
           &context->partsupfunc[keyno],
           context->ppccontext);
    else
     fmgr_info_cxt(cmpfn, &context->stepcmpfuncs[stateidx],
          context->ppccontext);
   }

   values[keyno] = datum;
   nvalues++;

   lc1 = lnext(opstep->exprs, lc1);
   lc2 = lnext(opstep->cmpfns, lc2);
  }
 }





 stateidx = PruneCxtStateIdx(context->partnatts, opstep->step.step_id, 0);
 partsupfunc = &context->stepcmpfuncs[stateidx];

 switch (context->strategy)
 {
  case 130:
   return get_matching_hash_bounds(context,
           opstep->opstrategy,
           values, nvalues,
           partsupfunc,
           opstep->nullkeys);

  case 129:
   return get_matching_list_bounds(context,
           opstep->opstrategy,
           values[0], nvalues,
           &partsupfunc[0],
           opstep->nullkeys);

  case 128:
   return get_matching_range_bounds(context,
            opstep->opstrategy,
            values, nvalues,
            partsupfunc,
            opstep->nullkeys);

  default:
   elog(ERROR, "unexpected partition strategy: %d",
     (int) context->strategy);
   break;
 }

 return ((void*)0);
}
