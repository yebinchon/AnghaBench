
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int * to_zval_list (int *,int ,int ) ;

__attribute__((used)) static zval* to_zval_union(zval *ret, encodeTypePtr enc, xmlNodePtr data) {

 return to_zval_list(ret, enc, data);
}
