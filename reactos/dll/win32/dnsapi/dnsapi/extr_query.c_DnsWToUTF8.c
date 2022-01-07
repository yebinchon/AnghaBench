
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PCHAR ;


 int CP_UTF8 ;
 int * RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 int WideCharToMultiByte (int ,int ,int const*,int,int *,int,int *,int ) ;

__attribute__((used)) static PCHAR
DnsWToUTF8(const WCHAR *WideString)
{
    PCHAR AnsiString;
    int AnsiLen = WideCharToMultiByte(CP_UTF8,
                                      0,
                                      WideString,
                                      -1,
                                      ((void*)0),
                                      0,
                                      ((void*)0),
                                      0);
    if (AnsiLen == 0)
        return ((void*)0);
    AnsiString = RtlAllocateHeap(RtlGetProcessHeap(), 0, AnsiLen);
    if (AnsiString == ((void*)0))
    {
        return ((void*)0);
    }
    WideCharToMultiByte(CP_UTF8,
                        0,
                        WideString,
                        -1,
                        AnsiString,
                        AnsiLen,
                        ((void*)0),
                        0);

    return AnsiString;
}
