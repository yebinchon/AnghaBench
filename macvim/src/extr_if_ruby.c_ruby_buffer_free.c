
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ b_ruby_ref; } ;
typedef TYPE_1__ buf_T ;
typedef int VALUE ;
struct TYPE_5__ {int * data; } ;


 int Qnil ;
 TYPE_3__* RDATA (scalar_t__) ;
 int objtbl ;
 int rb_hash_aset (int ,int ,int ) ;
 int rb_obj_id (int ) ;

void ruby_buffer_free(buf_T *buf)
{
    if (buf->b_ruby_ref)
    {
 rb_hash_aset(objtbl, rb_obj_id((VALUE) buf->b_ruby_ref), Qnil);
 RDATA(buf->b_ruby_ref)->data = ((void*)0);
    }
}
