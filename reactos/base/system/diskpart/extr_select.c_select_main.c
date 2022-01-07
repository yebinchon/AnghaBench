
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int IDS_HELP_CMD_SELECT ;
 int SelectDisk (int,int *) ;
 int SelectPartition (int,int *) ;
 int StdOut ;
 int TRUE ;
 int wcsicmp (int ,char*) ;

BOOL
select_main(
    INT argc,
    LPWSTR *argv)
{

    if (argc == 1)
    {
        ConResPuts(StdOut, IDS_HELP_CMD_SELECT);
        return TRUE;
    }


    if (!wcsicmp(argv[1], L"disk"))
        SelectDisk(argc, argv);
    else if (!wcsicmp(argv[1], L"partition"))
        SelectPartition(argc, argv);
    else
        ConResPuts(StdOut, IDS_HELP_CMD_SELECT);

    return TRUE;
}
