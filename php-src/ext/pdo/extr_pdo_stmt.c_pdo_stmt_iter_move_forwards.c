
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zend_ulong ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int data; } ;
struct php_pdo_iterator {scalar_t__ key; int fetch_ahead; TYPE_1__ iter; } ;
typedef int pdo_stmt_t ;


 int PDO_FETCH_ORI_NEXT ;
 int PDO_FETCH_USE_DEFAULT ;
 int PDO_HANDLE_STMT_ERR () ;
 int TRUE ;
 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int * Z_PDO_STMT_P (int *) ;
 int do_fetch (int *,int ,int *,int ,int ,int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void pdo_stmt_iter_move_forwards(zend_object_iterator *iter)
{
 struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;
 pdo_stmt_t *stmt = Z_PDO_STMT_P(&I->iter.data);

 if (!Z_ISUNDEF(I->fetch_ahead)) {
  zval_ptr_dtor(&I->fetch_ahead);
 }

 if (!do_fetch(stmt, TRUE, &I->fetch_ahead, PDO_FETCH_USE_DEFAULT,
   PDO_FETCH_ORI_NEXT, 0, 0)) {

  PDO_HANDLE_STMT_ERR();
  I->key = (zend_ulong)-1;
  ZVAL_UNDEF(&I->fetch_ahead);

  return;
 }

 I->key++;
}
