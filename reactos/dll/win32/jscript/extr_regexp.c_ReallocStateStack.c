
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t stateStackLimit; int ok; int cx; int stateStack; int pool; } ;
typedef int REProgState ;
typedef TYPE_1__ REGlobalData ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int heap_pool_grow (int ,int ,size_t,size_t) ;
 int js_ReportOutOfScriptQuota (int ) ;

__attribute__((used)) static BOOL
ReallocStateStack(REGlobalData *gData)
{
    size_t limit = gData->stateStackLimit;
    size_t sz = sizeof(REProgState) * limit;

    gData->stateStack = heap_pool_grow(gData->pool, gData->stateStack, sz, sz);
    if (!gData->stateStack) {
        js_ReportOutOfScriptQuota(gData->cx);
        gData->ok = FALSE;
        return FALSE;
    }
    gData->stateStackLimit = limit + limit;
    return TRUE;
}
