
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_object ;


 int * zend_string_init (char*,int,int ) ;

__attribute__((used)) static zend_string *row_get_classname(const zend_object *object)
{
 return zend_string_init("PDORow", sizeof("PDORow") - 1, 0);
}
