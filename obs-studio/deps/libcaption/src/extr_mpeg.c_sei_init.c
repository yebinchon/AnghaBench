
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double timestamp; scalar_t__ tail; scalar_t__ head; } ;
typedef TYPE_1__ sei_t ;



void sei_init(sei_t* sei, double timestamp)
{
    sei->head = 0;
    sei->tail = 0;
    sei->timestamp = timestamp;
}
