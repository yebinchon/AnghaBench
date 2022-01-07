
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dialog_list {struct dialog_list* next; } ;


 int free (struct dialog_list*) ;
 int * item_cur ;
 struct dialog_list* item_head ;
 int item_nil ;

void item_reset(void)
{
 struct dialog_list *p, *next;

 for (p = item_head; p; p = next) {
  next = p->next;
  free(p);
 }
 item_head = ((void*)0);
 item_cur = &item_nil;
}
