
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevaluator {int stk_index; int stack; } ;
typedef int BOOL ;


 int PEV_ERROR (struct pevaluator*,char*) ;
 int TRUE ;
 int strcpy (char*,char*) ;
 char** vector_at (int *,int ) ;

__attribute__((used)) static BOOL pev_pop(struct pevaluator* pev, char* elt)
{
    char** at = vector_at(&pev->stack, --pev->stk_index);
    if (!at) return PEV_ERROR(pev, "pop: stack empty");
    strcpy(elt, *at);
    return TRUE;
}
