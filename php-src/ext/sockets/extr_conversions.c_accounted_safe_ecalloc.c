
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocations; } ;
typedef TYPE_1__ ser_context ;


 int memset (void*,char,size_t) ;
 void* safe_emalloc (size_t,size_t,size_t) ;
 int zend_llist_add_element (int *,void**) ;

__attribute__((used)) static inline void *accounted_safe_ecalloc(size_t nmemb, size_t alloc_size, size_t offset, ser_context *ctx)
{
 void *ret = safe_emalloc(nmemb, alloc_size, offset);
 memset(ret, '\0', nmemb * alloc_size + offset);
 zend_llist_add_element(&ctx->allocations, &ret);
 return ret;
}
