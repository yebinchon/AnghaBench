
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,char*,int ,int *,int *) ;

__attribute__((used)) static inline char *dns_strdup_wu( LPCWSTR str )
{
    LPSTR ret = ((void*)0);
    if (str)
    {
        DWORD len = WideCharToMultiByte( CP_UTF8, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
        if ((ret = HeapAlloc(GetProcessHeap(), 0, len )))
            WideCharToMultiByte( CP_UTF8, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    }
    return ret;
}
