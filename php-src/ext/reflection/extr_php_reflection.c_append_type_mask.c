
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_type ;
typedef int uint32_t ;


 scalar_t__ ZEND_TYPE_INIT_MASK (int ) ;
 int append_type (int *,int ) ;

__attribute__((used)) static void append_type_mask(zval *return_value, uint32_t type_mask) {
 append_type(return_value, (zend_type) ZEND_TYPE_INIT_MASK(type_mask));
}
