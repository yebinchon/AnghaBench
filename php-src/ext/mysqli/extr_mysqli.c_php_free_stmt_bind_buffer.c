
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* val; } ;
struct TYPE_5__ {unsigned int var_cnt; TYPE_2__* is_null; TYPE_2__* buf; TYPE_2__* vars; } ;
typedef TYPE_1__ BIND_BUFFER ;


 int FETCH_RESULT ;
 int FETCH_SIMPLE ;
 int efree (TYPE_2__*) ;
 int zval_ptr_dtor (TYPE_2__*) ;

void php_free_stmt_bind_buffer(BIND_BUFFER bbuf, int type)
{
 unsigned int i;

 if (!bbuf.var_cnt) {
  return;
 }

 for (i=0; i < bbuf.var_cnt; i++) {


  if (type == FETCH_RESULT && bbuf.buf[i].val) {
   efree(bbuf.buf[i].val);
  }

  zval_ptr_dtor(&bbuf.vars[i]);
 }

 if (bbuf.vars) {
  efree(bbuf.vars);
 }







 if (type == FETCH_RESULT) {
  efree(bbuf.buf);
 } else if (type == FETCH_SIMPLE){
  efree(bbuf.is_null);
 }

 bbuf.var_cnt = 0;
}
