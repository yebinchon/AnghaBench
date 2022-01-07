
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
struct TYPE_4__ {int data; int * funcs; } ;
typedef TYPE_1__ zend_object_iterator ;
typedef int zend_class_entry ;
struct php_pdo_iterator {TYPE_1__ iter; int fetch_ahead; scalar_t__ key; } ;
typedef int pdo_stmt_t ;


 int PDO_FETCH_ORI_NEXT ;
 int PDO_FETCH_USE_DEFAULT ;
 int PDO_HANDLE_STMT_ERR () ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 int * Z_PDO_STMT_P (int *) ;
 int do_fetch (int *,int,int *,int ,int ,int ,int ) ;
 struct php_pdo_iterator* ecalloc (int,int) ;
 int pdo_stmt_iter_funcs ;
 int zend_iterator_init (TYPE_1__*) ;
 int zend_throw_error (int *,char*) ;

zend_object_iterator *pdo_stmt_iter_get(zend_class_entry *ce, zval *object, int by_ref)
{
 pdo_stmt_t *stmt = Z_PDO_STMT_P(object);
 struct php_pdo_iterator *I;

 if (by_ref) {
  zend_throw_error(((void*)0), "An iterator cannot be used with foreach by reference");
  return ((void*)0);
 }

 I = ecalloc(1, sizeof(struct php_pdo_iterator));
 zend_iterator_init(&I->iter);
 I->iter.funcs = &pdo_stmt_iter_funcs;
 Z_ADDREF_P(object);
 ZVAL_OBJ(&I->iter.data, Z_OBJ_P(object));

 if (!do_fetch(stmt, 1, &I->fetch_ahead, PDO_FETCH_USE_DEFAULT,
   PDO_FETCH_ORI_NEXT, 0, 0)) {
  PDO_HANDLE_STMT_ERR();
  I->key = (zend_ulong)-1;
  ZVAL_UNDEF(&I->fetch_ahead);
 }

 return &I->iter;
}
