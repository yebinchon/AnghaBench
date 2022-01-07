
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct var_list {int number; struct var_list* next; void* pointer; } ;
struct TYPE_2__ {int sqlerrmc; int sqlerrml; } ;
struct sqlca_t {TYPE_1__ sqlerrm; int sqlstate; int sqlcode; } ;


 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 int ECPGfree_auto_mem () ;
 struct sqlca_t* ECPGget_sqlca () ;
 scalar_t__ calloc (long,int) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_raise (int,int ,int ,int *) ;
 struct var_list* ivlist ;
 int snprintf (int ,int,char*,int) ;
 int strlen (int ) ;
 int strncpy (int ,char*,int) ;

void
ECPGset_var(int number, void *pointer, int lineno)
{
 struct var_list *ptr;

 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_OUT_OF_MEMORY,
       ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return;
 }

 ecpg_init_sqlca(sqlca);

 for (ptr = ivlist; ptr != ((void*)0); ptr = ptr->next)
 {
  if (ptr->number == number)
  {

   ptr->pointer = pointer;
   return;
  }
 }


 ptr = (struct var_list *) calloc(1L, sizeof(struct var_list));
 if (!ptr)
 {
  struct sqlca_t *sqlca = ECPGget_sqlca();

  if (sqlca == ((void*)0))
  {
   ecpg_raise(lineno, ECPG_OUT_OF_MEMORY,
        ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
   return;
  }

  sqlca->sqlcode = ECPG_OUT_OF_MEMORY;
  strncpy(sqlca->sqlstate, "YE001", sizeof(sqlca->sqlstate));
  snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc), "out of memory on line %d", lineno);
  sqlca->sqlerrm.sqlerrml = strlen(sqlca->sqlerrm.sqlerrmc);

  ECPGfree_auto_mem();
 }
 else
 {
  ptr->number = number;
  ptr->pointer = pointer;
  ptr->next = ivlist;
  ivlist = ptr;
 }
}
