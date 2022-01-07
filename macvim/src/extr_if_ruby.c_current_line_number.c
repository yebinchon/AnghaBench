
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VALUE ;
struct TYPE_3__ {scalar_t__ lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int INT2FIX (int) ;
 TYPE_2__* curwin ;

__attribute__((used)) static VALUE current_line_number()
{
    return INT2FIX((int)curwin->w_cursor.lnum);
}
