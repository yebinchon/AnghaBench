
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef TYPE_2__ buf_T ;
typedef int aco_save_T ;
typedef int VALUE ;


 int NOT_VALID ;
 long NUM2LONG (int ) ;
 scalar_t__ OK ;
 int Qnil ;
 int aucmd_prepbuf (int *,TYPE_2__*) ;
 int aucmd_restbuf (int *) ;
 int changed () ;
 int deleted_lines_mark (long,long) ;
 TYPE_2__* get_buf (int ) ;
 int ml_delete (long,int ) ;
 int rb_eIndexError ;
 int rb_raise (int ,char*,long) ;
 scalar_t__ u_savedel (long,int) ;
 int update_curbuf (int ) ;

__attribute__((used)) static VALUE buffer_delete(VALUE self, VALUE num)
{
    buf_T *buf = get_buf(self);
    long n = NUM2LONG(num);
    aco_save_T aco;

    if (n > 0 && n <= buf->b_ml.ml_line_count)
    {

 aucmd_prepbuf(&aco, buf);

 if (u_savedel(n, 1) == OK) {
     ml_delete(n, 0);



     deleted_lines_mark(n, 1L);

     changed();
 }


 aucmd_restbuf(&aco);


 update_curbuf(NOT_VALID);
    }
    else
    {
 rb_raise(rb_eIndexError, "line number %ld out of range", n);
    }
    return Qnil;
}
