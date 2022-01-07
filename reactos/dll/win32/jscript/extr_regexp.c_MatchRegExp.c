
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* parens; int const* cp; } ;
typedef TYPE_3__ match_state_t ;
typedef int const WCHAR ;
typedef size_t UINT ;
struct TYPE_14__ {int skipped; scalar_t__ stateStackTop; scalar_t__ cursz; int backTrackStack; int backTrackSP; TYPE_2__* regexp; int ok; int const* cpend; } ;
struct TYPE_12__ {size_t parenCount; int flags; } ;
struct TYPE_11__ {int index; } ;
typedef TYPE_4__ REGlobalData ;


 TYPE_3__* ExecuteREBytecode (TYPE_4__*,TYPE_3__*) ;
 int REG_STICKY ;

__attribute__((used)) static match_state_t *MatchRegExp(REGlobalData *gData, match_state_t *x)
{
    match_state_t *result;
    const WCHAR *cp = x->cp;
    const WCHAR *cp2;
    UINT j;





    for (cp2 = cp; cp2 <= gData->cpend; cp2++) {
        gData->skipped = cp2 - cp;
        x->cp = cp2;
        for (j = 0; j < gData->regexp->parenCount; j++)
            x->parens[j].index = -1;
        result = ExecuteREBytecode(gData, x);
        if (!gData->ok || result || (gData->regexp->flags & REG_STICKY))
            return result;
        gData->backTrackSP = gData->backTrackStack;
        gData->cursz = 0;
        gData->stateStackTop = 0;
        cp2 = cp + gData->skipped;
    }
    return ((void*)0);
}
