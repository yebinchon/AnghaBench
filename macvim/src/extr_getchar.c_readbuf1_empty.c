
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * b_next; } ;
struct TYPE_4__ {TYPE_1__ bh_first; } ;


 TYPE_2__ readbuf1 ;

int
readbuf1_empty()
{
    return (readbuf1.bh_first.b_next == ((void*)0));
}
