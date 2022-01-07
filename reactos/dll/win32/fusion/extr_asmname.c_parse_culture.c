
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {void* culture; } ;
typedef int const* LPCWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int HRESULT ;


 int S_OK ;
 int lstrlenW (int const*) ;
 void* strdupW (int const*) ;

__attribute__((used)) static HRESULT parse_culture(IAssemblyNameImpl *name, LPCWSTR culture)
{
    static const WCHAR empty[] = {0};

    if (lstrlenW(culture) == 2)
        name->culture = strdupW(culture);
    else
        name->culture = strdupW(empty);

    return S_OK;
}
