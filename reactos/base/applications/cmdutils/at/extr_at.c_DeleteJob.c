
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWSTR ;
typedef scalar_t__ NET_API_STATUS ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int ConResPrintf (int ,int ) ;
 int Confirm () ;
 scalar_t__ FALSE ;
 int IDS_DELETE_ALL ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetScheduleJobDel (int ,int,int) ;
 int PrintErrorMessage (scalar_t__) ;
 int StdOut ;

__attribute__((used)) static
INT
DeleteJob(
    PWSTR pszComputerName,
    ULONG ulJobId,
    BOOL bForceDelete)
{
    NET_API_STATUS Status;

    if (ulJobId == (ULONG)-1 && bForceDelete == FALSE)
    {
        ConResPrintf(StdOut, IDS_DELETE_ALL);
        if (!Confirm())
            return 0;
    }

    Status = NetScheduleJobDel(pszComputerName,
                               (ulJobId == (ULONG)-1) ? 0 : ulJobId,
                               (ulJobId == (ULONG)-1) ? -1 : ulJobId);
    if (Status != NERR_Success)
    {
        PrintErrorMessage(Status);
        return 1;
    }

    return 0;
}
