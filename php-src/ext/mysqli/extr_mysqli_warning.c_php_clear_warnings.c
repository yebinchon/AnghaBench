
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int sqlstate; int reason; } ;
typedef TYPE_1__ MYSQLI_WARNING ;


 int efree (TYPE_1__*) ;
 int zval_ptr_dtor_str (int *) ;

void php_clear_warnings(MYSQLI_WARNING *w)
{
 MYSQLI_WARNING *n;

 while (w) {
  n = w;
  zval_ptr_dtor_str(&(w->reason));
  zval_ptr_dtor_str(&(w->sqlstate));
  w = w->next;
  efree(n);
 }
}
