
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef int INT ;


 int CP_ACP ;
 int * CoTaskMemAlloc (int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static inline LPWSTR co_strdupAtoW(LPCSTR str)
{
    INT len;
    WCHAR *ret;
    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    ret = CoTaskMemAlloc(len*sizeof(WCHAR));
    if (ret)
        MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);
    return ret;
}
