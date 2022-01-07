
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int * message; int cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_assert ;
typedef int PLpgSQL_execstate ;
typedef int Oid ;
typedef int Datum ;


 int ERRCODE_ASSERT_FAILURE ;
 int ERROR ;
 int PLPGSQL_RC_OK ;
 char* convert_value_to_string (int *,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errmsg_internal (char*,char*) ;
 int exec_eval_boolean (int *,int ,int*) ;
 int exec_eval_cleanup (int *) ;
 int exec_eval_expr (int *,int *,int*,int *,int *) ;
 int plpgsql_check_asserts ;

__attribute__((used)) static int
exec_stmt_assert(PLpgSQL_execstate *estate, PLpgSQL_stmt_assert *stmt)
{
 bool value;
 bool isnull;


 if (!plpgsql_check_asserts)
  return PLPGSQL_RC_OK;

 value = exec_eval_boolean(estate, stmt->cond, &isnull);
 exec_eval_cleanup(estate);

 if (isnull || !value)
 {
  char *message = ((void*)0);

  if (stmt->message != ((void*)0))
  {
   Datum val;
   Oid typeid;
   int32 typmod;

   val = exec_eval_expr(estate, stmt->message,
         &isnull, &typeid, &typmod);
   if (!isnull)
    message = convert_value_to_string(estate, val, typeid);

  }

  ereport(ERROR,
    (errcode(ERRCODE_ASSERT_FAILURE),
     message ? errmsg_internal("%s", message) :
     errmsg("assertion failed")));
 }

 return PLPGSQL_RC_OK;
}
