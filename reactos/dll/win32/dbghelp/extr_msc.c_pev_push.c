
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {scalar_t__ stk_index; int pool; int stack; } ;
typedef int BOOL ;


 int PEV_ERROR (struct pevaluator*,char*) ;
 int TRUE ;
 char* pool_strdup (int *,char const*) ;
 char** vector_add (int *,int *) ;
 char** vector_at (int *,scalar_t__) ;
 scalar_t__ vector_length (int *) ;

__attribute__((used)) static BOOL pev_push(struct pevaluator* pev, const char* elt)
{
    char** at;
    if (pev->stk_index < vector_length(&pev->stack))
        at = vector_at(&pev->stack, pev->stk_index);
    else
        at = vector_add(&pev->stack, &pev->pool);
    if (!at) return PEV_ERROR(pev, "push: out of memory");
    *at = pool_strdup(&pev->pool, elt);
    pev->stk_index++;
    return TRUE;
}
