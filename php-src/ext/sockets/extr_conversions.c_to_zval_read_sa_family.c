
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef scalar_t__ sa_family_t ;
typedef int res_context ;
typedef int ival ;


 int ZVAL_LONG (int *,int ) ;
 int memcpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static void to_zval_read_sa_family(const char *data, zval *zv, res_context *ctx)
{
 sa_family_t ival;
 memcpy(&ival, data, sizeof(ival));

 ZVAL_LONG(zv, (zend_long)ival);
}
