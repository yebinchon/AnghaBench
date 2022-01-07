
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int * cp; int * cpend; } ;
typedef TYPE_1__ CompilerState ;
typedef int BOOL ;


 int JS7_ISDEC (int ) ;
 int JS7_UNDEC (int ) ;
 int OVERFLOW_VALUE ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static UINT
GetDecimalValue(WCHAR c, UINT max, UINT (*findMax)(CompilerState *state),
                CompilerState *state)
{
    UINT value = JS7_UNDEC(c);
    BOOL overflow = (value > max && (!findMax || value > findMax(state)));


    assert(max <= ((UINT)-1 - 9) / 10);
    while (state->cp < state->cpend) {
        c = *state->cp;
        if (!JS7_ISDEC(c))
            break;
        value = 10 * value + JS7_UNDEC(c);
        if (!overflow && value > max && (!findMax || value > findMax(state)))
            overflow = TRUE;
        ++state->cp;
    }
    return overflow ? OVERFLOW_VALUE : value;
}
