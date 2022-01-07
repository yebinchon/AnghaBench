
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int colnr_T ;
typedef int char_u ;
struct TYPE_5__ {long ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef TYPE_2__ buf_T ;
typedef int aco_save_T ;
typedef int VALUE ;


 int FALSE ;
 int NOT_VALID ;
 long NUM2LONG (int ) ;
 scalar_t__ OK ;
 char* StringValuePtr (int ) ;
 int appended_lines_mark (long,long) ;
 int aucmd_prepbuf (int *,TYPE_2__*) ;
 int aucmd_restbuf (int *) ;
 int changed () ;
 TYPE_2__* get_buf (int ) ;
 int ml_append (long,int *,int ,int ) ;
 int rb_eIndexError ;
 int rb_raise (int ,char*,...) ;
 scalar_t__ u_inssub (long) ;
 int update_curbuf (int ) ;

__attribute__((used)) static VALUE buffer_append(VALUE self, VALUE num, VALUE str)
{
    buf_T *buf = get_buf(self);
    char *line = StringValuePtr(str);
    long n = NUM2LONG(num);
    aco_save_T aco;

    if (line == ((void*)0))
    {
 rb_raise(rb_eIndexError, "NULL line");
    }
    else if (n >= 0 && n <= buf->b_ml.ml_line_count)
    {

 aucmd_prepbuf(&aco, buf);

 if (u_inssub(n + 1) == OK) {
     ml_append(n, (char_u *) line, (colnr_T) 0, FALSE);



     appended_lines_mark(n, 1L);

     changed();
 }


 aucmd_restbuf(&aco);


 update_curbuf(NOT_VALID);
    }
    else
    {
 rb_raise(rb_eIndexError, "line number %ld out of range", n);
    }
    return str;
}
