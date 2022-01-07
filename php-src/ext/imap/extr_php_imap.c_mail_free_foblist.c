
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ text; struct TYPE_7__* next; } ;
typedef TYPE_2__ FOBJECTLIST ;


 TYPE_2__* NIL ;
 int fs_give (void**) ;

void mail_free_foblist(FOBJECTLIST **foblist, FOBJECTLIST **tail)
{
 FOBJECTLIST *cur, *next;

 for (cur=*foblist, next=cur->next; cur; cur=next) {
  next = cur->next;

  if(cur->text.data)
   fs_give((void **)&(cur->text.data));

  fs_give((void **)&cur);
 }

 *tail = NIL;
 *foblist = NIL;
}
