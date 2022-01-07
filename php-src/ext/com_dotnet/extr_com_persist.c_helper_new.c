
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; } ;
typedef TYPE_2__ php_com_persist_helper ;


 TYPE_2__* emalloc (int) ;
 int helper_ce ;
 int helper_handlers ;
 int memset (TYPE_2__*,int ,int) ;
 int zend_object_std_init (TYPE_1__*,int ) ;

__attribute__((used)) static zend_object* helper_new(zend_class_entry *ce)
{
 php_com_persist_helper *helper;

 helper = emalloc(sizeof(*helper));
 memset(helper, 0, sizeof(*helper));

 zend_object_std_init(&helper->std, helper_ce);
 helper->std.handlers = &helper_handlers;

 return &helper->std;
}
