
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_cursor; } ;


 TYPE_1__* curwin ;
 int dec (int *) ;

int
dec_cursor()
{
    return dec(&curwin->w_cursor);
}
