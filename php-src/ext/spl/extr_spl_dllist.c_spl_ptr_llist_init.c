
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spl_ptr_llist_dtor_func ;
typedef int spl_ptr_llist_ctor_func ;
struct TYPE_4__ {int ctor; int dtor; scalar_t__ count; int * tail; int * head; } ;
typedef TYPE_1__ spl_ptr_llist ;


 TYPE_1__* emalloc (int) ;

__attribute__((used)) static spl_ptr_llist *spl_ptr_llist_init(spl_ptr_llist_ctor_func ctor, spl_ptr_llist_dtor_func dtor)
{
 spl_ptr_llist *llist = emalloc(sizeof(spl_ptr_llist));

 llist->head = ((void*)0);
 llist->tail = ((void*)0);
 llist->count = 0;
 llist->dtor = dtor;
 llist->ctor = ctor;

 return llist;
}
