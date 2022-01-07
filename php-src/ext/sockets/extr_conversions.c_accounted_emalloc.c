
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocations; } ;
typedef TYPE_1__ ser_context ;


 void* emalloc (size_t) ;
 int zend_llist_add_element (int *,void**) ;

__attribute__((used)) static inline void *accounted_emalloc(size_t alloc_size, ser_context *ctx)
{
 void *ret = emalloc(alloc_size);
 zend_llist_add_element(&ctx->allocations, &ret);
 return ret;
}
