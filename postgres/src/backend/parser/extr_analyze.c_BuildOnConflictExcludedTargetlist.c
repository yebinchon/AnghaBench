
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Var ;
typedef int TargetEntry ;
struct TYPE_9__ {int atttypmod; int attname; int attcollation; int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_8__ {TYPE_1__* rd_rel; int rd_att; } ;
struct TYPE_7__ {int reltype; } ;
typedef TYPE_2__* Relation ;
typedef int List ;
typedef int Index ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Expr ;


 int INT4OID ;
 int InvalidAttrNumber ;
 int InvalidOid ;
 int * NIL ;
 int NameStr (int ) ;
 int RelationGetNumberOfAttributes (TYPE_2__*) ;
 TYPE_3__* TupleDescAttr (int ,int) ;
 int * lappend (int *,int *) ;
 scalar_t__ makeNullConst (int ,int,int ) ;
 int * makeTargetEntry (int *,int,char*,int) ;
 int * makeVar (int ,int,int ,int,int ,int ) ;
 char* pstrdup (int ) ;

List *
BuildOnConflictExcludedTargetlist(Relation targetrel,
          Index exclRelIndex)
{
 List *result = NIL;
 int attno;
 Var *var;
 TargetEntry *te;





 for (attno = 0; attno < RelationGetNumberOfAttributes(targetrel); attno++)
 {
  Form_pg_attribute attr = TupleDescAttr(targetrel->rd_att, attno);
  char *name;

  if (attr->attisdropped)
  {




   var = (Var *) makeNullConst(INT4OID, -1, InvalidOid);
   name = ((void*)0);
  }
  else
  {
   var = makeVar(exclRelIndex, attno + 1,
        attr->atttypid, attr->atttypmod,
        attr->attcollation,
        0);
   name = pstrdup(NameStr(attr->attname));
  }

  te = makeTargetEntry((Expr *) var,
        attno + 1,
        name,
        0);

  result = lappend(result, te);
 }
 var = makeVar(exclRelIndex, InvalidAttrNumber,
      targetrel->rd_rel->reltype,
      -1, InvalidOid, 0);
 te = makeTargetEntry((Expr *) var, InvalidAttrNumber, ((void*)0), 1);
 result = lappend(result, te);

 return result;
}
