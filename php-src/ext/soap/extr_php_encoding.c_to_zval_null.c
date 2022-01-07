
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int ZVAL_NULL (int *) ;

__attribute__((used)) static zval *to_zval_null(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 ZVAL_NULL(ret);
 return ret;
}
