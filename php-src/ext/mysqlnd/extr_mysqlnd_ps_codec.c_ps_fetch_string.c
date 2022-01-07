
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_uchar ;
typedef int MYSQLND_FIELD ;


 int DBG_ENTER (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,int const) ;
 int DBG_VOID_RETURN ;
 int ZVAL_STRINGL (int *,char*,int const) ;
 int php_mysqlnd_net_field_length (int const**) ;

__attribute__((used)) static void
ps_fetch_string(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{




 const zend_ulong length = php_mysqlnd_net_field_length(row);
 DBG_ENTER("ps_fetch_string");
 DBG_INF_FMT("len = %lu", length);
 DBG_INF("copying from the row buffer");
 ZVAL_STRINGL(zv, (char *)*row, length);

 (*row) += length;
 DBG_VOID_RETURN;
}
