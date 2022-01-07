
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_buffer; } ;
typedef TYPE_1__ win_T ;
typedef int VALUE ;


 int buffer_new (int ) ;
 TYPE_1__* get_win (int ) ;

__attribute__((used)) static VALUE window_buffer(VALUE self)
{
    win_T *win = get_win(self);

    return buffer_new(win->w_buffer);
}
