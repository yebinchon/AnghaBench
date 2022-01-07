
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_11__ {int resno; int resjunk; } ;
typedef TYPE_1__ TargetEntry ;
struct TYPE_13__ {int attlen; int attbyval; int attname; int attisdropped; int attcollation; int atttypmod; int atttypid; } ;
struct TYPE_12__ {int rd_att; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef int Index ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Expr ;
typedef int Datum ;




 int COERCE_IMPLICIT_CAST ;
 int COERCION_IMPLICIT ;
 int ERROR ;
 int INT4OID ;
 int InvalidOid ;
 int * NIL ;
 int NameStr (int ) ;
 int RelationGetNumberOfAttributes (TYPE_2__*) ;
 TYPE_3__* TupleDescAttr (int ,int) ;
 int * coerce_to_domain (int *,int ,int,int ,int ,int ,int,int) ;
 int elog (int ,char*,...) ;
 TYPE_1__* flatCopyTargetEntry (TYPE_1__*) ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *,int *) ;
 scalar_t__ makeConst (int ,int,int ,int,int ,int,int) ;
 TYPE_1__* makeTargetEntry (int *,int,int ,int) ;
 scalar_t__ makeVar (int ,int,int ,int ,int ,int ) ;
 int pstrdup (int ) ;

__attribute__((used)) static List *
expand_targetlist(List *tlist, int command_type,
      Index result_relation, Relation rel)
{
 List *new_tlist = NIL;
 ListCell *tlist_item;
 int attrno,
    numattrs;

 tlist_item = list_head(tlist);
 numattrs = RelationGetNumberOfAttributes(rel);

 for (attrno = 1; attrno <= numattrs; attrno++)
 {
  Form_pg_attribute att_tup = TupleDescAttr(rel->rd_att, attrno - 1);
  TargetEntry *new_tle = ((void*)0);

  if (tlist_item != ((void*)0))
  {
   TargetEntry *old_tle = (TargetEntry *) lfirst(tlist_item);

   if (!old_tle->resjunk && old_tle->resno == attrno)
   {
    new_tle = old_tle;
    tlist_item = lnext(tlist, tlist_item);
   }
  }

  if (new_tle == ((void*)0))
  {
   Oid atttype = att_tup->atttypid;
   int32 atttypmod = att_tup->atttypmod;
   Oid attcollation = att_tup->attcollation;
   Node *new_expr;

   switch (command_type)
   {
    case 129:
     if (!att_tup->attisdropped)
     {
      new_expr = (Node *) makeConst(atttype,
               -1,
               attcollation,
               att_tup->attlen,
               (Datum) 0,
               1,
               att_tup->attbyval);
      new_expr = coerce_to_domain(new_expr,
             InvalidOid, -1,
             atttype,
             COERCION_IMPLICIT,
             COERCE_IMPLICIT_CAST,
             -1,
             0);
     }
     else
     {

      new_expr = (Node *) makeConst(INT4OID,
               -1,
               InvalidOid,
               sizeof(int32),
               (Datum) 0,
               1,
               1 );
     }
     break;
    case 128:
     if (!att_tup->attisdropped)
     {
      new_expr = (Node *) makeVar(result_relation,
             attrno,
             atttype,
             atttypmod,
             attcollation,
             0);
     }
     else
     {

      new_expr = (Node *) makeConst(INT4OID,
               -1,
               InvalidOid,
               sizeof(int32),
               (Datum) 0,
               1,
               1 );
     }
     break;
    default:
     elog(ERROR, "unrecognized command_type: %d",
       (int) command_type);
     new_expr = ((void*)0);
     break;
   }

   new_tle = makeTargetEntry((Expr *) new_expr,
           attrno,
           pstrdup(NameStr(att_tup->attname)),
           0);
  }

  new_tlist = lappend(new_tlist, new_tle);
 }
 while (tlist_item)
 {
  TargetEntry *old_tle = (TargetEntry *) lfirst(tlist_item);

  if (!old_tle->resjunk)
   elog(ERROR, "targetlist is not sorted correctly");

  if (old_tle->resno != attrno)
  {
   old_tle = flatCopyTargetEntry(old_tle);
   old_tle->resno = attrno;
  }
  new_tlist = lappend(new_tlist, old_tle);
  attrno++;
  tlist_item = lnext(tlist, tlist_item);
 }

 return new_tlist;
}
