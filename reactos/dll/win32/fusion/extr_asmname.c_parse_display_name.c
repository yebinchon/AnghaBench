
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* displayname; char* name; char* procarch; char* culture; } ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int FUSION_E_INVALID_NAME ;
 int S_OK ;
 scalar_t__ TRUE ;
 int culture ;
 int heap_free (char*) ;
 int lstrcmpiW (char*,int ) ;
 int parse_culture (TYPE_1__*,char*) ;
 int parse_procarch (TYPE_1__*,char*) ;
 int parse_pubkey (TYPE_1__*,char*) ;
 char* parse_value (char*,int) ;
 int parse_version (TYPE_1__*,char*) ;
 int procarch ;
 int pubkey ;
 void* strdupW (char*) ;
 int version ;
 char* wcschr (char*,char) ;

__attribute__((used)) static HRESULT parse_display_name(IAssemblyNameImpl *name, LPCWSTR szAssemblyName)
{
    LPWSTR str, save, ptr, ptr2, value;
    HRESULT hr = S_OK;
    BOOL done = FALSE;

    if (!szAssemblyName)
        return S_OK;

    name->displayname = strdupW(szAssemblyName);
    if (!name->displayname)
        return E_OUTOFMEMORY;

    str = strdupW(szAssemblyName);
    save = str;
    if (!str)
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    ptr = wcschr(str, ',');
    if (ptr) *ptr = '\0';


    if( !ptr && wcschr(str, ' ') )
    {
        hr = FUSION_E_INVALID_NAME;
        goto done;
    }

    name->name = strdupW(str);
    if (!name->name)
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    if (!ptr)
        goto done;

    str = ptr + 1;
    while (!done)
    {
        ptr = wcschr(str, '=');
        if (!ptr)
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }

        *(ptr++) = '\0';
        if (!*ptr)
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }

        if (!(ptr2 = wcschr(ptr, ',')))
        {
            if (!(ptr2 = wcschr(ptr, '\0')))
            {
                hr = FUSION_E_INVALID_NAME;
                goto done;
            }

            done = TRUE;
        }

        *ptr2 = '\0';
        if (!(value = parse_value( ptr, ptr2 - ptr )))
        {
            hr = FUSION_E_INVALID_NAME;
            goto done;
        }
        while (*str == ' ') str++;

        if (!lstrcmpiW(str, version))
            hr = parse_version( name, value );
        else if (!lstrcmpiW(str, culture))
            hr = parse_culture( name, value );
        else if (!lstrcmpiW(str, pubkey))
            hr = parse_pubkey( name, value );
        else if (!lstrcmpiW(str, procarch))
        {
            name->procarch = value;
            value = ((void*)0);

            hr = parse_procarch( name, name->procarch );
        }
        heap_free( value );

        if (FAILED(hr))
            goto done;

        str = ptr2 + 1;
    }

done:
    heap_free(save);
    if (FAILED(hr))
    {
        heap_free(name->displayname);
        heap_free(name->name);
        heap_free(name->culture);
        heap_free(name->procarch);
    }
    return hr;
}
