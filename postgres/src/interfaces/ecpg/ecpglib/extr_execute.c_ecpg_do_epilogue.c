
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statement {scalar_t__ oldlocale; int oldthreadlocale; } ;
typedef scalar_t__ locale_t ;


 int LC_NUMERIC ;
 int _configthreadlocale (int) ;
 int free_statement (struct statement*) ;
 int setlocale (int ,scalar_t__) ;
 int uselocale (scalar_t__) ;

void
ecpg_do_epilogue(struct statement *stmt)
{
 if (stmt == ((void*)0))
  return;





 if (stmt->oldlocale)
  setlocale(LC_NUMERIC, stmt->oldlocale);
 free_statement(stmt);
}
