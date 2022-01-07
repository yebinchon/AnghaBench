
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dialog_list {struct dialog_list* next; } ;


 struct dialog_list* item_head ;

int item_count(void)
{
 int n = 0;
 struct dialog_list *p;

 for (p = item_head; p; p = p->next)
  n++;
 return n;
}
