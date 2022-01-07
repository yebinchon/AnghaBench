
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_ptr_heap_zval_dtor(void *elem) {
 zval_ptr_dtor((zval *) elem);
}
