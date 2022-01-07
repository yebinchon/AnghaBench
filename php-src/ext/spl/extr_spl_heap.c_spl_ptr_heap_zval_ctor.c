
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_TRY_ADDREF_P (int *) ;

__attribute__((used)) static void spl_ptr_heap_zval_ctor(void *elem) {
 Z_TRY_ADDREF_P((zval *) elem);
}
