
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * PTCHAR ;
typedef int * PBYTE ;


 int _T (char*) ;
 int _stprintf (int *,int ,int ,int ,int ,int ,int ,int ) ;

PTCHAR PrintMacAddr(PBYTE Mac)
{
    static TCHAR MacAddr[20];

    _stprintf(MacAddr, _T("%02x-%02x-%02x-%02x-%02x-%02x"),
        Mac[0], Mac[1], Mac[2], Mac[3], Mac[4], Mac[5]);

    return MacAddr;
}
