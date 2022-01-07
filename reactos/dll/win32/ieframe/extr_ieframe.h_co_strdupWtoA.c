
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int CHAR ;


 int CP_ACP ;
 int * CoTaskMemAlloc (int ) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int ,int ,int ) ;

__attribute__((used)) static inline LPSTR co_strdupWtoA(LPCWSTR str)
{
    INT len;
    CHAR *ret;
    len = WideCharToMultiByte(CP_ACP, 0, str, -1, ((void*)0), 0, 0, 0);
    ret = CoTaskMemAlloc(len);
    if (ret)
        WideCharToMultiByte(CP_ACP, 0, str, -1, ret, len, 0, 0);
    return ret;
}
