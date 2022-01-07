
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int cls () ;
 TYPE_2__* curwin ;
 int dec_cursor () ;
 int inc_cursor () ;

__attribute__((used)) static void
back_in_line()
{
    int sclass;

    sclass = cls();
    for (;;)
    {
 if (curwin->w_cursor.col == 0)
     break;
 dec_cursor();
 if (cls() != sclass)
 {
     inc_cursor();
     break;
 }
    }
}
