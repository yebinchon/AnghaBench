
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t classCount; TYPE_4__* classList; } ;
typedef TYPE_1__ regexp_t ;
typedef int heap_pool_t ;
typedef size_t UINT ;
struct TYPE_9__ {int converted; } ;
struct TYPE_8__ {int backTrackStackSize; int stateStackLimit; int ok; TYPE_1__* regexp; int * pool; void* cx; scalar_t__ stateStackTop; void* stateStack; scalar_t__ backTrackLimit; scalar_t__ backTrackCount; scalar_t__ cursz; void* backTrackStack; void* backTrackSP; } ;
typedef int REProgState ;
typedef TYPE_2__ REGlobalData ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int INITIAL_BACKTRACK ;
 int INITIAL_STATESTACK ;
 int ProcessCharSet (TYPE_2__*,TYPE_4__*) ;
 int S_OK ;
 int TRUE ;
 void* heap_pool_alloc (int *,int) ;
 int js_ReportOutOfScriptQuota (void*) ;

__attribute__((used)) static HRESULT InitMatch(regexp_t *re, void *cx, heap_pool_t *pool, REGlobalData *gData)
{
    UINT i;

    gData->backTrackStackSize = INITIAL_BACKTRACK;
    gData->backTrackStack = heap_pool_alloc(gData->pool, INITIAL_BACKTRACK);
    if (!gData->backTrackStack)
        goto bad;

    gData->backTrackSP = gData->backTrackStack;
    gData->cursz = 0;
    gData->backTrackCount = 0;
    gData->backTrackLimit = 0;

    gData->stateStackLimit = INITIAL_STATESTACK;
    gData->stateStack = heap_pool_alloc(gData->pool, sizeof(REProgState) * INITIAL_STATESTACK);
    if (!gData->stateStack)
        goto bad;

    gData->stateStackTop = 0;
    gData->cx = cx;
    gData->pool = pool;
    gData->regexp = re;
    gData->ok = TRUE;

    for (i = 0; i < re->classCount; i++) {
        if (!re->classList[i].converted &&
                !ProcessCharSet(gData, &re->classList[i])) {
            return E_FAIL;
        }
    }

    return S_OK;

bad:
    js_ReportOutOfScriptQuota(cx);
    gData->ok = FALSE;
    return E_OUTOFMEMORY;
}
