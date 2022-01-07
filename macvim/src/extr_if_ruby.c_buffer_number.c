
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_fnum; } ;
typedef TYPE_1__ buf_T ;
typedef int VALUE ;


 int INT2NUM (int ) ;
 TYPE_1__* get_buf (int ) ;

__attribute__((used)) static VALUE buffer_number(VALUE self)
{
    buf_T *buf = get_buf(self);

    return INT2NUM(buf->b_fnum);
}
