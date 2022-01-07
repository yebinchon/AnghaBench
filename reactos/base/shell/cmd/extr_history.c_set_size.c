
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int prev; } ;
typedef scalar_t__ INT ;


 int ASSERT (int) ;
 scalar_t__ Bottom ;
 TYPE_1__* Top ;
 int del (int ) ;
 scalar_t__ max_size ;
 scalar_t__ size ;

VOID set_size(INT new_size)
{
    ASSERT(Top && Bottom);

    while (new_size<size)
        del(Top->prev);

    max_size=new_size;
}
