
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;
typedef int zend_bool ;


 int IS_CV ;
 int IS_TMP_VAR ;
 int IS_VAR ;

__attribute__((used)) static inline zend_bool is_var_type(zend_uchar type) {
 return (type & (IS_CV|IS_VAR|IS_TMP_VAR)) != 0;
}
