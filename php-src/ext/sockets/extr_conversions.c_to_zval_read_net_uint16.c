
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int uint16_t ;
typedef int res_context ;
typedef int ival ;


 int ZVAL_LONG (int *,int ) ;
 int memcpy (int *,char const*,int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void to_zval_read_net_uint16(const char *data, zval *zv, res_context *ctx)
{
 uint16_t ival;
 memcpy(&ival, data, sizeof(ival));

 ZVAL_LONG(zv, (zend_long)ntohs(ival));
}
