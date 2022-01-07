
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ml_line_count; } ;
struct TYPE_5__ {TYPE_1__ b_ml; } ;
typedef TYPE_2__ buf_T ;
typedef int VALUE ;


 int INT2NUM (int ) ;
 TYPE_2__* get_buf (int ) ;

__attribute__((used)) static VALUE buffer_count(VALUE self)
{
    buf_T *buf = get_buf(self);

    return INT2NUM(buf->b_ml.ml_line_count);
}
