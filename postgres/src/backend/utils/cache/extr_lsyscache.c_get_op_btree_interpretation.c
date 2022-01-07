
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int n_members; TYPE_1__** members; } ;
struct TYPE_10__ {scalar_t__ amopmethod; int amoprighttype; int amoplefttype; int amopfamily; scalar_t__ amopstrategy; } ;
struct TYPE_9__ {int strategy; int oprighttype; int oplefttype; int opfamily_id; } ;
struct TYPE_8__ {int tuple; } ;
typedef int StrategyNumber ;
typedef TYPE_2__ OpBtreeInterpretation ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_3__* Form_pg_amop ;
typedef TYPE_4__ CatCList ;


 int AMOPOPID ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 scalar_t__ BTREE_AM_OID ;
 int GETSTRUCT (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ROWCOMPARE_NE ;
 int ReleaseSysCacheList (TYPE_4__*) ;
 TYPE_4__* SearchSysCacheList1 (int ,int ) ;
 int get_negator (int ) ;
 int * lappend (int *,TYPE_2__*) ;
 scalar_t__ palloc (int) ;

List *
get_op_btree_interpretation(Oid opno)
{
 List *result = NIL;
 OpBtreeInterpretation *thisresult;
 CatCList *catlist;
 int i;




 catlist = SearchSysCacheList1(AMOPOPID, ObjectIdGetDatum(opno));

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple op_tuple = &catlist->members[i]->tuple;
  Form_pg_amop op_form = (Form_pg_amop) GETSTRUCT(op_tuple);
  StrategyNumber op_strategy;


  if (op_form->amopmethod != BTREE_AM_OID)
   continue;


  op_strategy = (StrategyNumber) op_form->amopstrategy;
  Assert(op_strategy >= 1 && op_strategy <= 5);

  thisresult = (OpBtreeInterpretation *)
   palloc(sizeof(OpBtreeInterpretation));
  thisresult->opfamily_id = op_form->amopfamily;
  thisresult->strategy = op_strategy;
  thisresult->oplefttype = op_form->amoplefttype;
  thisresult->oprighttype = op_form->amoprighttype;
  result = lappend(result, thisresult);
 }

 ReleaseSysCacheList(catlist);





 if (result == NIL)
 {
  Oid op_negator = get_negator(opno);

  if (OidIsValid(op_negator))
  {
   catlist = SearchSysCacheList1(AMOPOPID,
            ObjectIdGetDatum(op_negator));

   for (i = 0; i < catlist->n_members; i++)
   {
    HeapTuple op_tuple = &catlist->members[i]->tuple;
    Form_pg_amop op_form = (Form_pg_amop) GETSTRUCT(op_tuple);
    StrategyNumber op_strategy;


    if (op_form->amopmethod != BTREE_AM_OID)
     continue;


    op_strategy = (StrategyNumber) op_form->amopstrategy;
    Assert(op_strategy >= 1 && op_strategy <= 5);


    if (op_strategy != BTEqualStrategyNumber)
     continue;


    thisresult = (OpBtreeInterpretation *)
     palloc(sizeof(OpBtreeInterpretation));
    thisresult->opfamily_id = op_form->amopfamily;
    thisresult->strategy = ROWCOMPARE_NE;
    thisresult->oplefttype = op_form->amoplefttype;
    thisresult->oprighttype = op_form->amoprighttype;
    result = lappend(result, thisresult);
   }

   ReleaseSysCacheList(catlist);
  }
 }

 return result;
}
