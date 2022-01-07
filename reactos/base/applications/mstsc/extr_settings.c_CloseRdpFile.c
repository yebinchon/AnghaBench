
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;

__attribute__((used)) static VOID
CloseRdpFile(HANDLE hFile)
{
    if (hFile)
        CloseHandle(hFile);
}
