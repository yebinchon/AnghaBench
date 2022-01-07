
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int pekind; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int FUSION_E_INVALID_NAME ;
 int S_OK ;
 int lstrcmpiW (int ,char const*) ;
 int peAMD64 ;
 int peI386 ;
 int peIA64 ;
 int peMSIL ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static HRESULT parse_procarch(IAssemblyNameImpl *name, LPCWSTR procarch)
{
    static const WCHAR msilW[] = {'m','s','i','l',0};
    static const WCHAR x86W[] = {'x','8','6',0};
    static const WCHAR ia64W[] = {'i','a','6','4',0};
    static const WCHAR amd64W[] = {'a','m','d','6','4',0};

    if (!lstrcmpiW(procarch, msilW))
        name->pekind = peMSIL;
    else if (!lstrcmpiW(procarch, x86W))
        name->pekind = peI386;
    else if (!lstrcmpiW(procarch, ia64W))
        name->pekind = peIA64;
    else if (!lstrcmpiW(procarch, amd64W))
        name->pekind = peAMD64;
    else
    {
        ERR("unrecognized architecture: %s\n", wine_dbgstr_w(procarch));
        return FUSION_E_INVALID_NAME;
    }

    return S_OK;
}
