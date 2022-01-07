
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int *,int ,int *,int *) ;

__attribute__((used)) static inline LPSTR dns_strdup_wa( LPCWSTR str )
{
    LPSTR ret = ((void*)0);
    if (str)
    {
        DWORD len = WideCharToMultiByte( CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
        if ((ret = HeapAlloc(GetProcessHeap(), 0, len )))
            WideCharToMultiByte( CP_ACP, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    }
    return ret;
}
