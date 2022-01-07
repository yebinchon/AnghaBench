
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statement {struct statement* oldlocale; scalar_t__ clocale; struct statement* name; struct statement* command; int outlist; int inlist; } ;


 int ecpg_free (struct statement*) ;
 int free_variable (int ) ;
 int freelocale (scalar_t__) ;

__attribute__((used)) static void
free_statement(struct statement *stmt)
{
 if (stmt == ((void*)0))
  return;
 free_variable(stmt->inlist);
 free_variable(stmt->outlist);
 ecpg_free(stmt->command);
 ecpg_free(stmt->name);




 ecpg_free(stmt->oldlocale);

 ecpg_free(stmt);
}
