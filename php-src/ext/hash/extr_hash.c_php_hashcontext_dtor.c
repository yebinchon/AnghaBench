
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {unsigned char* context; unsigned char* key; TYPE_1__* ops; } ;
typedef TYPE_2__ php_hashcontext_object ;
struct TYPE_4__ {int block_size; int (* hash_final ) (unsigned char*,unsigned char*) ;int digest_size; } ;


 int ZEND_SECURE_ZERO (unsigned char*,int ) ;
 int efree (unsigned char*) ;
 unsigned char* emalloc (int ) ;
 TYPE_2__* php_hashcontext_from_object (int *) ;
 int stub1 (unsigned char*,unsigned char*) ;

__attribute__((used)) static void php_hashcontext_dtor(zend_object *obj) {
 php_hashcontext_object *hash = php_hashcontext_from_object(obj);


 if (hash->context) {
  unsigned char *dummy = emalloc(hash->ops->digest_size);
  hash->ops->hash_final(dummy, hash->context);
  efree(dummy);
  efree(hash->context);
  hash->context = ((void*)0);
 }

 if (hash->key) {
  ZEND_SECURE_ZERO(hash->key, hash->ops->block_size);
  efree(hash->key);
  hash->key = ((void*)0);
 }
}
