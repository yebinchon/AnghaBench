
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_3__ {int (* hash_final ) (unsigned char*,void*) ;int (* hash_update ) (void*,unsigned char const*,int const) ;int const block_size; int (* hash_init ) (void*) ;} ;
typedef TYPE_1__ php_hash_ops ;


 int stub1 (void*) ;
 int stub2 (void*,unsigned char const*,int const) ;
 int stub3 (void*,unsigned char const*,int const) ;
 int stub4 (unsigned char*,void*) ;

__attribute__((used)) static inline void php_hash_hmac_round(unsigned char *final, const php_hash_ops *ops, void *context, const unsigned char *key, const unsigned char *data, const zend_long data_size) {
 ops->hash_init(context);
 ops->hash_update(context, key, ops->block_size);
 ops->hash_update(context, data, data_size);
 ops->hash_final(final, context);
}
