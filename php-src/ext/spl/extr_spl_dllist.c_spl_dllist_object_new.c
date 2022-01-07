
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_class_entry ;


 int * spl_dllist_object_new_ex (int *,int *,int ) ;

__attribute__((used)) static zend_object *spl_dllist_object_new(zend_class_entry *class_type)
{
 return spl_dllist_object_new_ex(class_type, ((void*)0), 0);
}
