
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int IDS_HELP_CMD_LIST ;
 int ListDisk () ;
 int ListPartition () ;
 int ListVdisk () ;
 int ListVolume () ;
 int StdOut ;
 int TRUE ;
 int wcsicmp (int ,char*) ;

BOOL
list_main(
    INT argc,
    LPWSTR *argv)
{

    if (argc == 1)
    {
        ConResPuts(StdOut, IDS_HELP_CMD_LIST);
        return TRUE;
    }


    if (!wcsicmp(argv[1], L"disk"))
        ListDisk();
    else if (!wcsicmp(argv[1], L"partition"))
        ListPartition();
    else if (!wcsicmp(argv[1], L"volume"))
        ListVolume();
    else if (!wcsicmp(argv[1], L"vdisk"))
        ListVdisk();
    else
        ConResPuts(StdOut, IDS_HELP_CMD_LIST);

    return TRUE;
}
