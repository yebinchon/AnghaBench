
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int CHECK_ENOUGH_MEMORY (char*) ;
 int CP_ACP ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int const*,int,char*,scalar_t__,int *,int *) ;

__attribute__((used)) static char* GetMultiByteStringN(const WCHAR* strW, int chars, DWORD* len)
{
    if(strW)
    {
        char* strA;
        *len = WideCharToMultiByte(CP_ACP, 0, strW, chars, ((void*)0), 0, ((void*)0), ((void*)0));

        strA = HeapAlloc(GetProcessHeap(), 0, *len);
        CHECK_ENOUGH_MEMORY(strA);
        WideCharToMultiByte(CP_ACP, 0, strW, chars, strA, *len, ((void*)0), ((void*)0));
        return strA;
    }
    *len = 0;
    return ((void*)0);
}
