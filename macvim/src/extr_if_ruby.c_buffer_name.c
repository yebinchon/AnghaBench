
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_ffname; } ;
typedef TYPE_1__ buf_T ;
typedef int VALUE ;


 int Qnil ;
 TYPE_1__* get_buf (int ) ;
 int rb_str_new2 (char*) ;

__attribute__((used)) static VALUE buffer_name(VALUE self)
{
    buf_T *buf = get_buf(self);

    return buf->b_ffname ? rb_str_new2((char *)buf->b_ffname) : Qnil;
}
