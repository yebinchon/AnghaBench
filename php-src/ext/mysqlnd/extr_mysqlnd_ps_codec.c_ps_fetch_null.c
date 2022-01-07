
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;
typedef int MYSQLND_FIELD ;


 int ZVAL_NULL (int *) ;

__attribute__((used)) static void
ps_fetch_null(zval *zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 ZVAL_NULL(zv);
}
