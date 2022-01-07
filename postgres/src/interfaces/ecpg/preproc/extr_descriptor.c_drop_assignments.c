
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assignment {struct assignment* variable; struct assignment* next; } ;


 struct assignment* assignments ;
 int free (struct assignment*) ;

__attribute__((used)) static void
drop_assignments(void)
{
 while (assignments)
 {
  struct assignment *old_head = assignments;

  assignments = old_head->next;
  free(old_head->variable);
  free(old_head);
 }
}
