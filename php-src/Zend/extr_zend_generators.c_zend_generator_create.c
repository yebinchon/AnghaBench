
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_10__ {int * handlers; } ;
struct TYPE_7__ {TYPE_3__* root; } ;
struct TYPE_8__ {TYPE_1__ ptr; scalar_t__ children; int * parent; } ;
struct TYPE_9__ {int largest_used_integer_key; TYPE_4__ std; TYPE_2__ node; int values; int retval; } ;
typedef TYPE_3__ zend_generator ;
typedef int zend_class_entry ;


 int ZVAL_UNDEF (int *) ;
 TYPE_3__* emalloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int zend_generator_handlers ;
 int zend_object_std_init (TYPE_4__*,int *) ;

__attribute__((used)) static zend_object *zend_generator_create(zend_class_entry *class_type)
{
 zend_generator *generator;

 generator = emalloc(sizeof(zend_generator));
 memset(generator, 0, sizeof(zend_generator));


 generator->largest_used_integer_key = -1;

 ZVAL_UNDEF(&generator->retval);
 ZVAL_UNDEF(&generator->values);


 generator->node.parent = ((void*)0);
 generator->node.children = 0;
 generator->node.ptr.root = generator;

 zend_object_std_init(&generator->std, class_type);
 generator->std.handlers = &zend_generator_handlers;

 return (zend_object*)generator;
}
