
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int location; } ;
typedef TYPE_1__ Var ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_16__ {int colnames; } ;
struct TYPE_15__ {int attcollation; int atttypmod; int atttypid; int attname; scalar_t__ attisdropped; } ;
struct TYPE_14__ {int natts; } ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ Alias ;


 int Assert (int) ;
 int INT4OID ;
 int InvalidOid ;
 char* NameStr (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 int * lappend (int *,TYPE_1__*) ;
 int lfirst (int *) ;
 int list_length (int ) ;
 int * list_nth_cell (int ,int) ;
 int * lnext (int ,int *) ;
 TYPE_1__* makeNullConst (int ,int,int ) ;
 TYPE_1__* makeString (int ) ;
 TYPE_1__* makeVar (int,int,int ,int ,int ,int) ;
 int pstrdup (char*) ;
 char* strVal (int ) ;

__attribute__((used)) static void
expandTupleDesc(TupleDesc tupdesc, Alias *eref, int count, int offset,
    int rtindex, int sublevels_up,
    int location, bool include_dropped,
    List **colnames, List **colvars)
{
 ListCell *aliascell;
 int varattno;

 aliascell = (offset < list_length(eref->colnames)) ?
  list_nth_cell(eref->colnames, offset) : ((void*)0);

 Assert(count <= tupdesc->natts);
 for (varattno = 0; varattno < count; varattno++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, varattno);

  if (attr->attisdropped)
  {
   if (include_dropped)
   {
    if (colnames)
     *colnames = lappend(*colnames, makeString(pstrdup("")));
    if (colvars)
    {




     *colvars = lappend(*colvars,
            makeNullConst(INT4OID, -1, InvalidOid));
    }
   }
   if (aliascell)
    aliascell = lnext(eref->colnames, aliascell);
   continue;
  }

  if (colnames)
  {
   char *label;

   if (aliascell)
   {
    label = strVal(lfirst(aliascell));
    aliascell = lnext(eref->colnames, aliascell);
   }
   else
   {

    label = NameStr(attr->attname);
   }
   *colnames = lappend(*colnames, makeString(pstrdup(label)));
  }

  if (colvars)
  {
   Var *varnode;

   varnode = makeVar(rtindex, varattno + offset + 1,
         attr->atttypid, attr->atttypmod,
         attr->attcollation,
         sublevels_up);
   varnode->location = location;

   *colvars = lappend(*colvars, varnode);
  }
 }
}
