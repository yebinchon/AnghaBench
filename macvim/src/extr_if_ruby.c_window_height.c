
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_height; } ;
typedef TYPE_1__ win_T ;
typedef int VALUE ;


 int INT2NUM (int ) ;
 TYPE_1__* get_win (int ) ;

__attribute__((used)) static VALUE window_height(VALUE self)
{
    win_T *win = get_win(self);

    return INT2NUM(win->w_height);
}
