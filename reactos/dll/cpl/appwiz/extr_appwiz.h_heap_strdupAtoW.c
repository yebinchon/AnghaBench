
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,int *,size_t) ;
 int * heap_alloc (size_t) ;

__attribute__((used)) static inline WCHAR *heap_strdupAtoW(const char *str)
{
    WCHAR *ret = ((void*)0);

    if(str) {
        size_t len;

        len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
        ret = heap_alloc(len*sizeof(WCHAR));
        if(ret)
            MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);
    }

    return ret;
}
