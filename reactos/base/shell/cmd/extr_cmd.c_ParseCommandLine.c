
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PARSED_COMMAND ;
typedef int LPTSTR ;
typedef int INT ;


 int ExecuteCommand (int *) ;
 int FreeCommand (int *) ;
 int * ParseCommand (int ) ;

INT ParseCommandLine(LPTSTR cmd)
{
    INT Ret = 0;
    PARSED_COMMAND *Cmd = ParseCommand(cmd);
    if (Cmd)
    {
        Ret = ExecuteCommand(Cmd);
        FreeCommand(Cmd);
    }
    return Ret;
}
