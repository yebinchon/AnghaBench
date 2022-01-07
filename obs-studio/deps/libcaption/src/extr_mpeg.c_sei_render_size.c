
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int head; } ;
typedef TYPE_1__ sei_t ;
struct TYPE_9__ {int type; int size; } ;
typedef TYPE_2__ sei_message_t ;


 TYPE_2__* sei_message_head (TYPE_1__*) ;
 TYPE_2__* sei_message_next (TYPE_2__*) ;

size_t sei_render_size(sei_t* sei)
{
    if (!sei || !sei->head) {
        return 0;
    }

    size_t size = 2;
    sei_message_t* msg;
    for (msg = sei_message_head(sei); msg; msg = sei_message_next(msg)) {
        size += 1 + (msg->type / 255);
        size += 1 + (msg->size / 255);
        size += 1 + (msg->size * 4 / 3);
    }

    return size;
}
