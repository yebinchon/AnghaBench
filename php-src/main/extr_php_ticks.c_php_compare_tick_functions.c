
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_tick_function {scalar_t__ func; scalar_t__ arg; } ;



__attribute__((used)) static int php_compare_tick_functions(void *elem1, void *elem2)
{
  struct st_tick_function *e1 = (struct st_tick_function *)elem1;
  struct st_tick_function *e2 = (struct st_tick_function *)elem2;
  return e1->func == e2->func && e1->arg == e2->arg;
}
