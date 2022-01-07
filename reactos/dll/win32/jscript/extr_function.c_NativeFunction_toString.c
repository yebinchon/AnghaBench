
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int native_suffixW ;
typedef int native_prefixW ;
typedef int jsstr_t ;
typedef char WCHAR ;
struct TYPE_2__ {char const* name; } ;
typedef TYPE_1__ NativeFunction ;
typedef int HRESULT ;
typedef int FunctionInstance ;
typedef int DWORD ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int * jsstr_alloc_buf (scalar_t__,char**) ;
 int lstrlenW (char const*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static HRESULT NativeFunction_toString(FunctionInstance *func, jsstr_t **ret)
{
    NativeFunction *function = (NativeFunction*)func;
    DWORD name_len;
    jsstr_t *str;
    WCHAR *ptr;

    static const WCHAR native_prefixW[] = {'\n','f','u','n','c','t','i','o','n',' '};
    static const WCHAR native_suffixW[] =
        {'(',')',' ','{','\n',' ',' ',' ',' ','[','n','a','t','i','v','e',' ','c','o','d','e',']','\n','}','\n'};

    name_len = function->name ? lstrlenW(function->name) : 0;
    str = jsstr_alloc_buf(ARRAY_SIZE(native_prefixW) + ARRAY_SIZE(native_suffixW) + name_len, &ptr);
    if(!str)
        return E_OUTOFMEMORY;

    memcpy(ptr, native_prefixW, sizeof(native_prefixW));
    ptr += ARRAY_SIZE(native_prefixW);
    memcpy(ptr, function->name, name_len*sizeof(WCHAR));
    ptr += name_len;
    memcpy(ptr, native_suffixW, sizeof(native_suffixW));

    *ret = str;
    return S_OK;
}
