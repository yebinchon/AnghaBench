
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 size_t WideCharToMultiByte (int ,int ,int const*,int,char*,size_t,int *,int *) ;
 char* heap_alloc (size_t) ;

__attribute__((used)) static inline char *heap_strdupWtoA(const WCHAR *str)
{
    char *ret = ((void*)0);

    if(str) {
        size_t size = WideCharToMultiByte(CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        ret = heap_alloc(size);
        if(ret)
            WideCharToMultiByte(CP_ACP, 0, str, -1, ret, size, ((void*)0), ((void*)0));
    }

    return ret;
}
