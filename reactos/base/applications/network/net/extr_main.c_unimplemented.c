
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int ConPuts (int ,char*) ;
 int StdOut ;

INT unimplemented(INT argc, WCHAR **argv)
{
    ConPuts(StdOut, L"This command is not implemented yet\n");
    return 1;
}
