
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int* attrMap; TYPE_1__* outdesc; } ;
typedef TYPE_2__ TupleConversionMap ;
struct TYPE_12__ {int resno; } ;
typedef TYPE_3__ TargetEntry ;
struct TYPE_13__ {int attisdropped; int attname; } ;
struct TYPE_10__ {int natts; } ;
typedef int List ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Expr ;
typedef int Datum ;
typedef int Const ;
typedef int AttrNumber ;


 int Assert (int) ;
 int INT4OID ;
 int InvalidAttrNumber ;
 int InvalidOid ;
 int * NIL ;
 int NameStr (int ) ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 int * lappend (int *,TYPE_3__*) ;
 scalar_t__ list_nth (int *,int) ;
 int * makeConst (int ,int,int ,int,int ,int,int) ;
 TYPE_3__* makeTargetEntry (int *,int,int ,int) ;
 int pstrdup (int ) ;

__attribute__((used)) static List *
adjust_partition_tlist(List *tlist, TupleConversionMap *map)
{
 List *new_tlist = NIL;
 TupleDesc tupdesc = map->outdesc;
 AttrNumber *attrMap = map->attrMap;
 AttrNumber attrno;

 for (attrno = 1; attrno <= tupdesc->natts; attrno++)
 {
  Form_pg_attribute att_tup = TupleDescAttr(tupdesc, attrno - 1);
  TargetEntry *tle;

  if (attrMap[attrno - 1] != InvalidAttrNumber)
  {
   Assert(!att_tup->attisdropped);





   tle = (TargetEntry *) list_nth(tlist, attrMap[attrno - 1] - 1);
   tle->resno = attrno;
  }
  else
  {
   Const *expr;





   Assert(att_tup->attisdropped);
   expr = makeConst(INT4OID,
        -1,
        InvalidOid,
        sizeof(int32),
        (Datum) 0,
        1,
        1 );
   tle = makeTargetEntry((Expr *) expr,
          attrno,
          pstrdup(NameStr(att_tup->attname)),
          0);
  }

  new_tlist = lappend(new_tlist, tle);
 }

 return new_tlist;
}
