
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; int head; } ;
typedef TYPE_1__ sei_t ;


 int fprintf (int ,char*,TYPE_1__*) ;
 int sei_dump_messages (int ,int ) ;
 int stderr ;

void sei_dump(sei_t* sei)
{
    fprintf(stderr, "SEI %p\n", sei);
    sei_dump_messages(sei->head, sei->timestamp);
}
