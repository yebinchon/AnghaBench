
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_mem {struct auto_mem* next; } ;


 int ecpg_free (struct auto_mem*) ;
 struct auto_mem* get_auto_allocs () ;
 int set_auto_allocs (int *) ;

void
ecpg_clear_auto_mem(void)
{
 struct auto_mem *am = get_auto_allocs();


 if (am)
 {
  do
  {
   struct auto_mem *act = am;

   am = am->next;
   ecpg_free(act);
  } while (am);
  set_auto_allocs(((void*)0));
 }
}
