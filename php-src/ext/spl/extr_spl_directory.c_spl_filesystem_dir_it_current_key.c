
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;
typedef int spl_filesystem_iterator ;


 int ZVAL_LONG (int *,int ) ;
 TYPE_3__* spl_filesystem_iterator_to_object (int *) ;

__attribute__((used)) static void spl_filesystem_dir_it_current_key(zend_object_iterator *iter, zval *key)
{
 spl_filesystem_object *object = spl_filesystem_iterator_to_object((spl_filesystem_iterator *)iter);

 ZVAL_LONG(key, object->u.dir.index);
}
