
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int * heap_alloc (int) ;
 int lstrlenW (int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static inline LPWSTR heap_strdupW(LPCWSTR str)
{
    LPWSTR ret = ((void*)0);

    if(str) {
        DWORD size;

        size = (lstrlenW(str)+1)*sizeof(WCHAR);
        ret = heap_alloc(size);
        if(ret)
            memcpy(ret, str, size);
    }

    return ret;
}
