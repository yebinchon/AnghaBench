
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int class_table; int function_table; } ;
struct TYPE_6__ {TYPE_1__ script; } ;
typedef TYPE_2__ zend_persistent_script ;


 int ZEND_CLASS_DTOR ;
 int ZEND_FUNCTION_DTOR ;
 scalar_t__ emalloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;

zend_persistent_script* create_persistent_script(void)
{
 zend_persistent_script *persistent_script = (zend_persistent_script *) emalloc(sizeof(zend_persistent_script));
 memset(persistent_script, 0, sizeof(zend_persistent_script));

 zend_hash_init(&persistent_script->script.function_table, 0, ((void*)0), ZEND_FUNCTION_DTOR, 0);




 zend_hash_init(&persistent_script->script.class_table, 0, ((void*)0), ZEND_CLASS_DTOR, 0);

 return persistent_script;
}
