
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 TYPE_2__* curwin ;
 int dec_cursor () ;
 int gchar_cursor () ;
 int inc_cursor () ;
 int p_ri ;
 int put_and_redo (int) ;
 int toF_Xor_X_ (int) ;

__attribute__((used)) static void
chg_r_to_Xor_X_()
{
    int tempc, c;

    if (curwin->w_cursor.col)
    {
 if (!p_ri)
     dec_cursor();

 tempc = gchar_cursor();

 if ((c = toF_Xor_X_(tempc)) != 0)
     put_and_redo(c);

 if (!p_ri)
     inc_cursor();

    }
}
