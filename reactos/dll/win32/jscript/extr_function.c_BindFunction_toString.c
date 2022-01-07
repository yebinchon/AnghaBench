
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef int FunctionInstance ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * jsstr_alloc (char const*) ;

__attribute__((used)) static HRESULT BindFunction_toString(FunctionInstance *function, jsstr_t **ret)
{
    static const WCHAR native_functionW[] =
        {'\n','f','u','n','c','t','i','o','n','(',')',' ','{','\n',
         ' ',' ',' ',' ','[','n','a','t','i','v','e',' ','c','o','d','e',']','\n',
         '}','\n',0};

    *ret = jsstr_alloc(native_functionW);
    return *ret ? S_OK : E_OUTOFMEMORY;
}
