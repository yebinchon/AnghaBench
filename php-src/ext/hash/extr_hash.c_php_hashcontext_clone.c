
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ce; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_12__ {TYPE_5__* ops; scalar_t__ key; int * context; int options; } ;
typedef TYPE_2__ php_hashcontext_object ;
struct TYPE_13__ {scalar_t__ (* hash_copy ) (TYPE_5__*,int *,int *) ;int block_size; int (* hash_init ) (int *) ;int context_size; } ;


 scalar_t__ SUCCESS ;
 scalar_t__ ecalloc (int,int ) ;
 int efree (int *) ;
 int * emalloc (int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 TYPE_1__* php_hashcontext_create (int ) ;
 TYPE_2__* php_hashcontext_from_object (TYPE_1__*) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (TYPE_5__*,int *,int *) ;
 int zend_objects_clone_members (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static zend_object *php_hashcontext_clone(zend_object *zobj) {
 php_hashcontext_object *oldobj = php_hashcontext_from_object(zobj);
 zend_object *znew = php_hashcontext_create(zobj->ce);
 php_hashcontext_object *newobj = php_hashcontext_from_object(znew);

 zend_objects_clone_members(znew, zobj);

 newobj->ops = oldobj->ops;
 newobj->options = oldobj->options;
 newobj->context = emalloc(newobj->ops->context_size);
 newobj->ops->hash_init(newobj->context);

 if (SUCCESS != newobj->ops->hash_copy(newobj->ops, oldobj->context, newobj->context)) {
  efree(newobj->context);
  newobj->context = ((void*)0);
  return znew;
 }

 newobj->key = ecalloc(1, newobj->ops->block_size);
 if (oldobj->key) {
  memcpy(newobj->key, oldobj->key, newobj->ops->block_size);
 }

 return znew;
}
