
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {struct variable* next; } ;


 int ecpg_free (struct variable*) ;

__attribute__((used)) static void
free_variable(struct variable *var)
{
 struct variable *var_next;

 while (var)
 {
  var_next = var->next;
  ecpg_free(var);
  var = var_next;
 }
}
