
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cNamedArgs; scalar_t__* rgdispidNamedArgs; scalar_t__ rgvarg; } ;
typedef int IDispatch ;
typedef size_t DWORD ;
typedef TYPE_1__ DISPPARAMS ;


 scalar_t__ DISPID_THIS ;
 int TRACE (char*) ;
 scalar_t__ VT_DISPATCH ;
 int * V_DISPATCH (scalar_t__) ;
 scalar_t__ V_VT (scalar_t__) ;
 int WARN (char*) ;

__attribute__((used)) static IDispatch *get_this(DISPPARAMS *dp)
{
    DWORD i;

    for(i=0; i < dp->cNamedArgs; i++) {
        if(dp->rgdispidNamedArgs[i] == DISPID_THIS) {
            if(V_VT(dp->rgvarg+i) == VT_DISPATCH)
                return V_DISPATCH(dp->rgvarg+i);

            WARN("This is not VT_DISPATCH\n");
            return ((void*)0);
        }
    }

    TRACE("no this passed\n");
    return ((void*)0);
}
