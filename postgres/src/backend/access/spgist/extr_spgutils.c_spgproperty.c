
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amoppurpose; scalar_t__ amoplefttype; scalar_t__ amoprighttype; int amopopr; int amopsortfamily; } ;
struct TYPE_6__ {int tuple; } ;
typedef scalar_t__ Oid ;
typedef int IndexAMProperty ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amop ;
typedef TYPE_3__ CatCList ;


 int AMOPSTRATEGY ;
 scalar_t__ AMOP_ORDER ;

 int GETSTRUCT (int *) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 scalar_t__ get_index_column_opclass (scalar_t__,int) ;
 int get_op_rettype (int ) ;
 int get_opclass_opfamily_and_input_type (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ opfamily_can_sort_type (int ,int ) ;

bool
spgproperty(Oid index_oid, int attno,
   IndexAMProperty prop, const char *propname,
   bool *res, bool *isnull)
{
 Oid opclass,
    opfamily,
    opcintype;
 CatCList *catlist;
 int i;


 if (attno == 0)
  return 0;

 switch (prop)
 {
  case 128:
   break;
  default:
   return 0;
 }
 opclass = get_index_column_opclass(index_oid, attno);
 if (!OidIsValid(opclass))
 {
  *isnull = 1;
  return 1;
 }


 if (!get_opclass_opfamily_and_input_type(opclass, &opfamily, &opcintype))
 {
  *isnull = 1;
  return 1;
 }


 catlist = SearchSysCacheList1(AMOPSTRATEGY,
          ObjectIdGetDatum(opfamily));

 *res = 0;

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple amoptup = &catlist->members[i]->tuple;
  Form_pg_amop amopform = (Form_pg_amop) GETSTRUCT(amoptup);

  if (amopform->amoppurpose == AMOP_ORDER &&
   (amopform->amoplefttype == opcintype ||
    amopform->amoprighttype == opcintype) &&
   opfamily_can_sort_type(amopform->amopsortfamily,
           get_op_rettype(amopform->amopopr)))
  {
   *res = 1;
   break;
  }
 }

 ReleaseSysCacheList(catlist);

 *isnull = 0;

 return 1;
}
