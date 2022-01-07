
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *heap_strdupAtoW(const char *str)
{
    WCHAR *ret;
    INT len;

    if (!str)
        return ((void*)0);

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, 0, 0);
    ret = heap_alloc(len * sizeof(WCHAR));
    MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);

    return ret;
}
