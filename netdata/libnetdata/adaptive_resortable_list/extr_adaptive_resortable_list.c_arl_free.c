
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* name; struct TYPE_6__* next; struct TYPE_6__* head; } ;
typedef TYPE_1__ ARL_ENTRY ;
typedef TYPE_1__ ARL_BASE ;


 int freez (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ unlikely (int) ;

void arl_free(ARL_BASE *arl_base) {
    if(unlikely(!arl_base))
        return;

    while(arl_base->head) {
        ARL_ENTRY *e = arl_base->head;
        arl_base->head = e->next;

        freez(e->name);



        freez(e);
    }

    freez(arl_base->name);





    freez(arl_base);
}
