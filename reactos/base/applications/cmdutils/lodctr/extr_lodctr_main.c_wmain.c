
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int FALSE ;
 int GetCommandLineW () ;
 int LoadPerfCounterTextStringsW (int ,int ) ;

int wmain(int argc, WCHAR *argv[])
{
    return LoadPerfCounterTextStringsW(GetCommandLineW(), FALSE);
}
