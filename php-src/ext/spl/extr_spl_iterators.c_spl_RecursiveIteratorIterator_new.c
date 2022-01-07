
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_class_entry ;


 int * spl_RecursiveIteratorIterator_new_ex (int *,int ) ;

__attribute__((used)) static zend_object *spl_RecursiveIteratorIterator_new(zend_class_entry *class_type)
{
 return spl_RecursiveIteratorIterator_new_ex(class_type, 0);
}
