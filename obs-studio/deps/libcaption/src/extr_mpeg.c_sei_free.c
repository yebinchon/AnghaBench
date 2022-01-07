
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* head; } ;
typedef TYPE_1__ sei_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ sei_message_t ;


 int free (TYPE_2__*) ;
 int sei_init (TYPE_1__*,int ) ;

void sei_free(sei_t* sei)
{
    sei_message_t* tail;

    while (sei->head) {
        tail = sei->head->next;
        free(sei->head);
        sei->head = tail;
    }

    sei_init(sei, 0);
}
