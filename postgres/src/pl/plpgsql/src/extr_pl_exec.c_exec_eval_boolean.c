
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int PLpgSQL_expr ;
typedef int PLpgSQL_execstate ;
typedef int Oid ;
typedef int Datum ;


 int BOOLOID ;
 int DatumGetBool (int ) ;
 int exec_cast_value (int *,int ,int*,int ,int ,int ,int) ;
 int exec_eval_expr (int *,int *,int*,int *,int *) ;

__attribute__((used)) static bool
exec_eval_boolean(PLpgSQL_execstate *estate,
      PLpgSQL_expr *expr,
      bool *isNull)
{
 Datum exprdatum;
 Oid exprtypeid;
 int32 exprtypmod;

 exprdatum = exec_eval_expr(estate, expr, isNull, &exprtypeid, &exprtypmod);
 exprdatum = exec_cast_value(estate, exprdatum, isNull,
        exprtypeid, exprtypmod,
        BOOLOID, -1);
 return DatumGetBool(exprdatum);
}
