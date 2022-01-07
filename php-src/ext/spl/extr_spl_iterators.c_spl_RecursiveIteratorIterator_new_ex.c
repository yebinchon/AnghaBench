
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int * postfix; int * prefix; } ;
typedef TYPE_2__ spl_recursive_it_object ;


 int object_properties_init (TYPE_1__*,int *) ;
 int smart_str_appendl (int *,char*,int) ;
 int spl_handlers_rec_it_it ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *spl_RecursiveIteratorIterator_new_ex(zend_class_entry *class_type, int init_prefix)
{
 spl_recursive_it_object *intern;

 intern = zend_object_alloc(sizeof(spl_recursive_it_object), class_type);

 if (init_prefix) {
  smart_str_appendl(&intern->prefix[0], "", 0);
  smart_str_appendl(&intern->prefix[1], "| ", 2);
  smart_str_appendl(&intern->prefix[2], "  ", 2);
  smart_str_appendl(&intern->prefix[3], "|-", 2);
  smart_str_appendl(&intern->prefix[4], "\\-", 2);
  smart_str_appendl(&intern->prefix[5], "", 0);

  smart_str_appendl(&intern->postfix[0], "", 0);
 }

 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);

 intern->std.handlers = &spl_handlers_rec_it_it;
 return &intern->std;
}
