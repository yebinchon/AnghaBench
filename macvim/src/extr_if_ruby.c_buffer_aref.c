
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linenr_T ;
typedef int buf_T ;
typedef int VALUE ;


 scalar_t__ NUM2LONG (int ) ;
 int Qnil ;
 int * get_buf (int ) ;
 int get_buffer_line (int *,int ) ;

__attribute__((used)) static VALUE buffer_aref(VALUE self, VALUE num)
{
    buf_T *buf = get_buf(self);

    if (buf != ((void*)0))
 return get_buffer_line(buf, (linenr_T)NUM2LONG(num));
    return Qnil;
}
