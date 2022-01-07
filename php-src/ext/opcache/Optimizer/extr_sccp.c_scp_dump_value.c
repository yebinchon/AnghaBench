
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_PARTIAL_OBJECT (int *) ;
 scalar_t__ IS_TOP (int *) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_dump_const (int *) ;
 int zend_dump_ht (int ) ;

__attribute__((used)) static void scp_dump_value(zval *zv) {
 if (IS_TOP(zv)) {
  fprintf(stderr, " top");
 } else if (IS_BOT(zv)) {
  fprintf(stderr, " bot");
 } else if (Z_TYPE_P(zv) == IS_ARRAY || IS_PARTIAL_ARRAY(zv)) {
  fprintf(stderr, " %s[", IS_PARTIAL_ARRAY(zv) ? "partial " : "");
  zend_dump_ht(Z_ARRVAL_P(zv));
  fprintf(stderr, "]");
 } else if (IS_PARTIAL_OBJECT(zv)) {
  fprintf(stderr, " {");
  zend_dump_ht(Z_ARRVAL_P(zv));
  fprintf(stderr, "}");
 } else {
  zend_dump_const(zv);
 }
}
