
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int ConPuts (int ,char*) ;
 int MSG_SYNTAX_HELP ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StdOut ;

INT
cmdSyntax(INT argc, WCHAR **argv)
{
    PrintMessageString(4381);
    ConPuts(StdOut, L"\n");
    PrintNetMessage(MSG_SYNTAX_HELP);
    return 0;
}
