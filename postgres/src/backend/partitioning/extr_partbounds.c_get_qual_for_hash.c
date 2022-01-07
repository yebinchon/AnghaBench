
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int remainder; int modulus; } ;
struct TYPE_5__ {int partnatts; scalar_t__* partattrs; int partexprs; int * parttypcoll; int * parttypmod; int * parttypid; } ;
typedef int Relation ;
typedef TYPE_1__* PartitionKey ;
typedef TYPE_2__ PartitionBoundSpec ;
typedef int Oid ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef int FuncExpr ;


 int BOOLOID ;
 int COERCE_EXPLICIT_CALL ;
 int F_SATISFIES_HASH_PARTITION ;
 int INT4OID ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int OIDOID ;
 int ObjectIdGetDatum (int ) ;
 TYPE_1__* RelationGetPartitionKey (int ) ;
 int RelationGetRelid (int ) ;
 scalar_t__ copyObject (int ) ;
 int * lappend (int *,int *) ;
 int lfirst (int *) ;
 int * list_head (int ) ;
 int * list_make1 (int *) ;
 int * list_make3 (int *,int *,int *) ;
 int * lnext (int ,int *) ;
 scalar_t__ makeConst (int ,int,int ,int,int ,int,int) ;
 int * makeFuncExpr (int ,int ,int *,int ,int ,int ) ;
 scalar_t__ makeVar (int,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static List *
get_qual_for_hash(Relation parent, PartitionBoundSpec *spec)
{
 PartitionKey key = RelationGetPartitionKey(parent);
 FuncExpr *fexpr;
 Node *relidConst;
 Node *modulusConst;
 Node *remainderConst;
 List *args;
 ListCell *partexprs_item;
 int i;


 relidConst = (Node *) makeConst(OIDOID,
         -1,
         InvalidOid,
         sizeof(Oid),
         ObjectIdGetDatum(RelationGetRelid(parent)),
         0,
         1);

 modulusConst = (Node *) makeConst(INT4OID,
           -1,
           InvalidOid,
           sizeof(int32),
           Int32GetDatum(spec->modulus),
           0,
           1);

 remainderConst = (Node *) makeConst(INT4OID,
          -1,
          InvalidOid,
          sizeof(int32),
          Int32GetDatum(spec->remainder),
          0,
          1);

 args = list_make3(relidConst, modulusConst, remainderConst);
 partexprs_item = list_head(key->partexprs);


 for (i = 0; i < key->partnatts; i++)
 {
  Node *keyCol;


  if (key->partattrs[i] != 0)
  {
   keyCol = (Node *) makeVar(1,
           key->partattrs[i],
           key->parttypid[i],
           key->parttypmod[i],
           key->parttypcoll[i],
           0);
  }
  else
  {
   keyCol = (Node *) copyObject(lfirst(partexprs_item));
   partexprs_item = lnext(key->partexprs, partexprs_item);
  }

  args = lappend(args, keyCol);
 }

 fexpr = makeFuncExpr(F_SATISFIES_HASH_PARTITION,
       BOOLOID,
       args,
       InvalidOid,
       InvalidOid,
       COERCE_EXPLICIT_CALL);

 return list_make1(fexpr);
}
