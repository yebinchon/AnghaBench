
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PWCHAR ;
typedef int CHAR ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,int const*,int,int *,int) ;
 int * RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;

__attribute__((used)) static PWCHAR
DnsUTF8ToW(const CHAR *NarrowString)
{
    PWCHAR WideString;
    int WideLen = MultiByteToWideChar(CP_UTF8,
                                      0,
                                      NarrowString,
                                      -1,
                                      ((void*)0),
                                      0);
    if (WideLen == 0)
        return ((void*)0);
    WideString = RtlAllocateHeap(RtlGetProcessHeap(), 0, WideLen * sizeof(WCHAR));
    if (WideString == ((void*)0))
    {
        return ((void*)0);
    }
    MultiByteToWideChar(CP_UTF8,
                        0,
                        NarrowString,
                        -1,
                        WideString,
                        WideLen);

    return WideString;
}
