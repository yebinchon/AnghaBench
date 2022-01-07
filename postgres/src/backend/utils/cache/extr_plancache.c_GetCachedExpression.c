
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_valid; int node; int context; void* invalItems; void* relationOids; void* expr; int magic; } ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef int Expr ;
typedef TYPE_1__ CachedExpression ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CACHEDEXPR_MAGIC ;
 int CacheMemoryContext ;
 int CurrentMemoryContext ;
 int MemoryContextSetParent (int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int cached_expression_list ;
 void* copyObject (int *) ;
 int dlist_push_tail (int *,int *) ;
 scalar_t__ expression_planner_with_deps (int *,int **,int **) ;
 scalar_t__ palloc (int) ;

CachedExpression *
GetCachedExpression(Node *expr)
{
 CachedExpression *cexpr;
 List *relationOids;
 List *invalItems;
 MemoryContext cexpr_context;
 MemoryContext oldcxt;






 expr = (Node *) expression_planner_with_deps((Expr *) expr,
             &relationOids,
             &invalItems);






 cexpr_context = AllocSetContextCreate(CurrentMemoryContext,
            "CachedExpression",
            ALLOCSET_SMALL_SIZES);

 oldcxt = MemoryContextSwitchTo(cexpr_context);

 cexpr = (CachedExpression *) palloc(sizeof(CachedExpression));
 cexpr->magic = CACHEDEXPR_MAGIC;
 cexpr->expr = copyObject(expr);
 cexpr->is_valid = 1;
 cexpr->relationOids = copyObject(relationOids);
 cexpr->invalItems = copyObject(invalItems);
 cexpr->context = cexpr_context;

 MemoryContextSwitchTo(oldcxt);





 MemoryContextSetParent(cexpr_context, CacheMemoryContext);




 dlist_push_tail(&cached_expression_list, &cexpr->node);

 return cexpr;
}
