
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * b_next; } ;
struct TYPE_8__ {TYPE_1__ bh_first; } ;
struct TYPE_6__ {int * b_next; } ;
struct TYPE_7__ {TYPE_2__ bh_first; } ;


 TYPE_4__ readbuf1 ;
 TYPE_3__ readbuf2 ;

int
stuff_empty()
{
    return (readbuf1.bh_first.b_next == ((void*)0)
  && readbuf2.bh_first.b_next == ((void*)0));
}
