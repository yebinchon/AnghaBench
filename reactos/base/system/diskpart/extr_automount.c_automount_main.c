
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConPuts (int ,char*) ;
 int StdOut ;
 int TRUE ;

BOOL automount_main(INT argc, LPWSTR *argv)
{
    ConPuts(StdOut, L"Automount\n");
    return TRUE;
}
