
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {size_t firstvar; scalar_t__ varcount; int ** values; struct TYPE_3__* prev; } ;
typedef size_t TCHAR ;
typedef int * LPTSTR ;
typedef TYPE_1__ FOR_CONTEXT ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* fc ;

__attribute__((used)) static LPTSTR FindForVar(TCHAR Var, BOOL *IsParam0)
{
    FOR_CONTEXT *Ctx;
    *IsParam0 = FALSE;
    for (Ctx = fc; Ctx != ((void*)0); Ctx = Ctx->prev)
    {
        if ((UINT)(Var - Ctx->firstvar) < Ctx->varcount)
            return Ctx->values[Var - Ctx->firstvar];
    }
    return ((void*)0);
}
