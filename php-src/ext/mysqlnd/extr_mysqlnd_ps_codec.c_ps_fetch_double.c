
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;
typedef int MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,double) ;
 int DBG_VOID_RETURN ;
 int ZVAL_DOUBLE (int *,double) ;
 int float8get (double,int const*) ;

__attribute__((used)) static void
ps_fetch_double(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
 double value;
 DBG_ENTER("ps_fetch_double");
 float8get(value, *row);
 ZVAL_DOUBLE(zv, value);
 (*row)+= 8;
 DBG_INF_FMT("value=%f", value);
 DBG_VOID_RETURN;
}
