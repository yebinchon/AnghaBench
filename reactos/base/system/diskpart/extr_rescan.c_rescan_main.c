
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int CreatePartitionList () ;
 int DestroyPartitionList () ;
 int IDS_RESCAN_END ;
 int IDS_RESCAN_START ;
 int StdOut ;
 int TRUE ;

BOOL rescan_main(INT argc, LPWSTR *argv)
{
    ConResPuts(StdOut, IDS_RESCAN_START);
    DestroyPartitionList();
    CreatePartitionList();
    ConResPuts(StdOut, IDS_RESCAN_END);

    return TRUE;
}
