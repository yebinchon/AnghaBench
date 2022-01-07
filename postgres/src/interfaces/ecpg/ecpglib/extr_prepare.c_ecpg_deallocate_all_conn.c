
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ prep_stmts; } ;
typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;


 int deallocate_one (int,int,struct connection*,int *,scalar_t__) ;

bool
ecpg_deallocate_all_conn(int lineno, enum COMPAT_MODE c, struct connection *con)
{

 while (con->prep_stmts)
 {
  if (!deallocate_one(lineno, c, con, ((void*)0), con->prep_stmts))
   return 0;
 }

 return 1;
}
