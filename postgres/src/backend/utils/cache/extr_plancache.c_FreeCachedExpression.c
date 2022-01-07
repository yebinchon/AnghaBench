
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int context; int node; } ;
typedef TYPE_1__ CachedExpression ;


 int Assert (int) ;
 scalar_t__ CACHEDEXPR_MAGIC ;
 int MemoryContextDelete (int ) ;
 int dlist_delete (int *) ;

void
FreeCachedExpression(CachedExpression *cexpr)
{

 Assert(cexpr->magic == CACHEDEXPR_MAGIC);

 dlist_delete(&cexpr->node);

 MemoryContextDelete(cexpr->context);
}
