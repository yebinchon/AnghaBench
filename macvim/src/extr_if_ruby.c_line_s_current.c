
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VALUE ;
struct TYPE_3__ {int lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int curbuf ;
 TYPE_2__* curwin ;
 int get_buffer_line (int ,int ) ;

__attribute__((used)) static VALUE line_s_current()
{
    return get_buffer_line(curbuf, curwin->w_cursor.lnum);
}
