
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int * to_zval_object_ex (int *,int ,int ,int *) ;

__attribute__((used)) static zval *to_zval_object(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 return to_zval_object_ex(ret, type, data, ((void*)0));
}
