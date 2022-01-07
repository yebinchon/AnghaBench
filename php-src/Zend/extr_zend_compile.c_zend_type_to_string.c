
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_type ;
typedef int zend_string ;


 int * zend_type_to_string_resolved (int ,int *) ;

zend_string *zend_type_to_string(zend_type type) {
 return zend_type_to_string_resolved(type, ((void*)0));
}
