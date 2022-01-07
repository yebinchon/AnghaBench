
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int priority; int data; } ;
typedef TYPE_1__ spl_pqueue_elem ;


 int SPL_PQUEUE_EXTR_BOTH ;
 int SPL_PQUEUE_EXTR_DATA ;
 int SPL_PQUEUE_EXTR_PRIORITY ;
 int ZEND_ASSERT (int ) ;
 int ZVAL_COPY (int *,int *) ;
 int Z_TRY_ADDREF (int ) ;
 int add_assoc_zval_ex (int *,char*,int,int *) ;
 int array_init (int *) ;

__attribute__((used)) static void spl_pqueue_extract_helper(zval *result, spl_pqueue_elem *elem, int flags)
{
 if ((flags & SPL_PQUEUE_EXTR_BOTH) == SPL_PQUEUE_EXTR_BOTH) {
  array_init(result);
  Z_TRY_ADDREF(elem->data);
  add_assoc_zval_ex(result, "data", sizeof("data") - 1, &elem->data);
  Z_TRY_ADDREF(elem->priority);
  add_assoc_zval_ex(result, "priority", sizeof("priority") - 1, &elem->priority);
  return;
 }

 if (flags & SPL_PQUEUE_EXTR_DATA) {
  ZVAL_COPY(result, &elem->data);
  return;
 }

 if (flags & SPL_PQUEUE_EXTR_PRIORITY) {
  ZVAL_COPY(result, &elem->priority);
  return;
 }

 ZEND_ASSERT(0);
}
