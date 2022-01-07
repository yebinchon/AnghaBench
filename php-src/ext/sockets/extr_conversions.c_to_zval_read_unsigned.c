
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int res_context ;
typedef int ival ;


 int ZVAL_LONG (int *,int ) ;
 int memcpy (unsigned int*,char const*,int) ;

__attribute__((used)) static void to_zval_read_unsigned(const char *data, zval *zv, res_context *ctx)
{
 unsigned ival;
 memcpy(&ival, data, sizeof(ival));

 ZVAL_LONG(zv, (zend_long)ival);
}
