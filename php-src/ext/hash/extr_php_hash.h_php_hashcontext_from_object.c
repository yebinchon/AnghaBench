
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int php_hashcontext_object ;



__attribute__((used)) static inline php_hashcontext_object *php_hashcontext_from_object(zend_object *obj) {
 return ((php_hashcontext_object*)(obj + 1)) - 1;
}
