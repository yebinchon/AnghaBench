
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linenr_T ;
typedef int buf_T ;
typedef int VALUE ;


 scalar_t__ NUM2LONG (int ) ;
 int * get_buf (int ) ;
 int set_buffer_line (int *,int ,int ) ;

__attribute__((used)) static VALUE buffer_aset(VALUE self, VALUE num, VALUE str)
{
    buf_T *buf = get_buf(self);

    if (buf != ((void*)0))
 return set_buffer_line(buf, (linenr_T)NUM2LONG(num), str);
    return str;
}
