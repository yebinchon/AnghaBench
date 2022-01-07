
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int IDS_HELP_CMD_ONLINE ;
 int StdOut ;
 int TRUE ;

BOOL online_main(INT argc, LPWSTR *argv)
{
    ConResPuts(StdOut, IDS_HELP_CMD_ONLINE);
    return TRUE;
}
