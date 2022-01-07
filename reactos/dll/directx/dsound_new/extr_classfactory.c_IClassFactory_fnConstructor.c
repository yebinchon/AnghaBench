
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int riidInst; int lpfnCI; int * lpVtbl; } ;
typedef int REFIID ;
typedef scalar_t__ PLONG ;
typedef int LPFNCREATEINSTANCE ;
typedef int * LPCLASSFACTORY ;
typedef TYPE_1__ IClassFactoryImpl ;
typedef int IClassFactory ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 int InterlockedIncrement (scalar_t__) ;
 int dclfvt ;

IClassFactory *
IClassFactory_fnConstructor(
    LPFNCREATEINSTANCE lpfnCI,
    PLONG pcRefDll,
    REFIID riidInst)
{
    IClassFactoryImpl* lpclf;

    lpclf = CoTaskMemAlloc(sizeof(IClassFactoryImpl));
    lpclf->ref = 1;
    lpclf->lpVtbl = &dclfvt;
    lpclf->lpfnCI = lpfnCI;

    if (pcRefDll)
        InterlockedIncrement(pcRefDll);
    lpclf->riidInst = riidInst;

    return (LPCLASSFACTORY)lpclf;
}
