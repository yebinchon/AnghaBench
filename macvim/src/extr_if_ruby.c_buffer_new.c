
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* b_ruby_ref; } ;
typedef TYPE_1__ buf_T ;
typedef scalar_t__ VALUE ;


 scalar_t__ Data_Wrap_Struct (int ,int ,int ,TYPE_1__*) ;
 int cBuffer ;
 int objtbl ;
 int rb_hash_aset (int ,int ,scalar_t__) ;
 int rb_obj_id (scalar_t__) ;

__attribute__((used)) static VALUE buffer_new(buf_T *buf)
{
    if (buf->b_ruby_ref)
    {
 return (VALUE) buf->b_ruby_ref;
    }
    else
    {
 VALUE obj = Data_Wrap_Struct(cBuffer, 0, 0, buf);
 buf->b_ruby_ref = (void *) obj;
 rb_hash_aset(objtbl, rb_obj_id(obj), obj);
 return obj;
    }
}
