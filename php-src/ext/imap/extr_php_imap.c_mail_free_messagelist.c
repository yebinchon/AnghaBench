
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ MESSAGELIST ;


 TYPE_1__* NIL ;
 int fs_give (void**) ;

void mail_free_messagelist(MESSAGELIST **msglist, MESSAGELIST **tail)
{
 MESSAGELIST *cur, *next;

 for (cur = *msglist, next = cur->next; cur; cur = next) {
  next = cur->next;
  fs_give((void **)&cur);
 }

 *tail = NIL;
 *msglist = NIL;
}
