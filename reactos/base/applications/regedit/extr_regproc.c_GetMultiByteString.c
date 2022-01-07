
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CHECK_ENOUGH_MEMORY (char*) ;
 int CP_ACP ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;

char* GetMultiByteString(const WCHAR* strW)
{
    if(strW)
    {
        char* strA;
        int len = WideCharToMultiByte(CP_ACP, 0, strW, -1, ((void*)0), 0, ((void*)0), ((void*)0));

        strA = HeapAlloc(GetProcessHeap(), 0, len);
        CHECK_ENOUGH_MEMORY(strA);
        WideCharToMultiByte(CP_ACP, 0, strW, -1, strA, len, ((void*)0), ((void*)0));
        return strA;
    }
    return ((void*)0);
}
