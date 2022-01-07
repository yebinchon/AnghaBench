
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int location; int fields; } ;
struct TYPE_17__ {scalar_t__* datums; } ;
struct TYPE_16__ {int ns; TYPE_1__* func; } ;
struct TYPE_15__ {int itemtype; int itemno; } ;
struct TYPE_14__ {int firstfield; } ;
struct TYPE_13__ {size_t recparentno; int nextfield; int fieldname; int dtype; } ;
struct TYPE_12__ {TYPE_6__* cur_estate; } ;
typedef int ParseState ;
typedef TYPE_2__ PLpgSQL_recfield ;
typedef TYPE_3__ PLpgSQL_rec ;
typedef TYPE_4__ PLpgSQL_nsitem ;
typedef TYPE_5__ PLpgSQL_expr ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int Node ;
typedef TYPE_7__ ColumnRef ;


 int A_Star ;
 int Assert (int) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int IsA (int *,int ) ;
 int PLPGSQL_DTYPE_RECFIELD ;


 int String ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 scalar_t__ lsecond (int ) ;
 scalar_t__ lthird (int ) ;
 int * make_datum_param (TYPE_5__*,int,int ) ;
 int parser_errposition (int *,int ) ;
 TYPE_4__* plpgsql_ns_lookup (int ,int,char const*,char const*,char const*,int*) ;
 char* strVal (int *) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static Node *
resolve_column_ref(ParseState *pstate, PLpgSQL_expr *expr,
       ColumnRef *cref, bool error_if_no_field)
{
 PLpgSQL_execstate *estate;
 PLpgSQL_nsitem *nse;
 const char *name1;
 const char *name2 = ((void*)0);
 const char *name3 = ((void*)0);
 const char *colname = ((void*)0);
 int nnames;
 int nnames_scalar = 0;
 int nnames_wholerow = 0;
 int nnames_field = 0;






 estate = expr->func->cur_estate;
 switch (list_length(cref->fields))
 {
  case 1:
   {
    Node *field1 = (Node *) linitial(cref->fields);

    Assert(IsA(field1, String));
    name1 = strVal(field1);
    nnames_scalar = 1;
    nnames_wholerow = 1;
    break;
   }
  case 2:
   {
    Node *field1 = (Node *) linitial(cref->fields);
    Node *field2 = (Node *) lsecond(cref->fields);

    Assert(IsA(field1, String));
    name1 = strVal(field1);


    if (IsA(field2, A_Star))
    {

     name2 = "*";
     nnames_wholerow = 1;
     break;
    }

    Assert(IsA(field2, String));
    name2 = strVal(field2);
    colname = name2;
    nnames_scalar = 2;
    nnames_wholerow = 2;
    nnames_field = 1;
    break;
   }
  case 3:
   {
    Node *field1 = (Node *) linitial(cref->fields);
    Node *field2 = (Node *) lsecond(cref->fields);
    Node *field3 = (Node *) lthird(cref->fields);

    Assert(IsA(field1, String));
    name1 = strVal(field1);
    Assert(IsA(field2, String));
    name2 = strVal(field2);


    if (IsA(field3, A_Star))
    {

     name3 = "*";
     nnames_wholerow = 2;
     break;
    }

    Assert(IsA(field3, String));
    name3 = strVal(field3);
    colname = name3;
    nnames_field = 2;
    break;
   }
  default:

   return ((void*)0);
 }

 nse = plpgsql_ns_lookup(expr->ns, 0,
       name1, name2, name3,
       &nnames);

 if (nse == ((void*)0))
  return ((void*)0);

 switch (nse->itemtype)
 {
  case 128:
   if (nnames == nnames_scalar)
    return make_datum_param(expr, nse->itemno, cref->location);
   break;
  case 129:
   if (nnames == nnames_wholerow)
    return make_datum_param(expr, nse->itemno, cref->location);
   if (nnames == nnames_field)
   {

    PLpgSQL_rec *rec = (PLpgSQL_rec *) estate->datums[nse->itemno];
    int i;


    i = rec->firstfield;
    while (i >= 0)
    {
     PLpgSQL_recfield *fld = (PLpgSQL_recfield *) estate->datums[i];

     Assert(fld->dtype == PLPGSQL_DTYPE_RECFIELD &&
         fld->recparentno == nse->itemno);
     if (strcmp(fld->fieldname, colname) == 0)
     {
      return make_datum_param(expr, i, cref->location);
     }
     i = fld->nextfield;
    }







    if (error_if_no_field)
     ereport(ERROR,
       (errcode(ERRCODE_UNDEFINED_COLUMN),
        errmsg("record \"%s\" has no field \"%s\"",
         (nnames_field == 1) ? name1 : name2,
         colname),
        parser_errposition(pstate, cref->location)));
   }
   break;
  default:
   elog(ERROR, "unrecognized plpgsql itemtype: %d", nse->itemtype);
 }


 return ((void*)0);
}
