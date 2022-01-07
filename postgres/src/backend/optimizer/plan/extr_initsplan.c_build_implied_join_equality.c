
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RestrictInfo ;
typedef int Relids ;
typedef int Oid ;
typedef int Index ;
typedef int Expr ;


 int BOOLOID ;
 int InvalidOid ;
 int check_hashjoinable (int *) ;
 int check_mergejoinable (int *) ;
 int copyObject (int *) ;
 int * make_opclause (int ,int ,int,int ,int ,int ,int ) ;
 int * make_restrictinfo (int *,int,int,int,int ,int ,int *,int ) ;

RestrictInfo *
build_implied_join_equality(Oid opno,
       Oid collation,
       Expr *item1,
       Expr *item2,
       Relids qualscope,
       Relids nullable_relids,
       Index security_level)
{
 RestrictInfo *restrictinfo;
 Expr *clause;





 clause = make_opclause(opno,
         BOOLOID,
         0,
         copyObject(item1),
         copyObject(item2),
         InvalidOid,
         collation);




 restrictinfo = make_restrictinfo(clause,
          1,
          0,
          0,
          security_level,
          qualscope,
          ((void*)0),
          nullable_relids);


 check_mergejoinable(restrictinfo);
 check_hashjoinable(restrictinfo);

 return restrictinfo;
}
