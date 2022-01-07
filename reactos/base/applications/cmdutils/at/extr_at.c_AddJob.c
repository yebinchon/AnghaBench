
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int JobTime; int Flags; int Command; int DaysOfWeek; scalar_t__ DaysOfMonth; } ;
typedef int PWSTR ;
typedef int PBYTE ;
typedef scalar_t__ NET_API_STATUS ;
typedef int INT ;
typedef int DWORD_PTR ;
typedef scalar_t__ BOOL ;
typedef TYPE_1__ AT_INFO ;


 int ConResPrintf (int ,int ,scalar_t__) ;
 int IDS_NEW_JOB ;
 int JOB_NONINTERACTIVE ;
 int JOB_RUN_PERIODICALLY ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetScheduleJobAdd (int ,int ,scalar_t__*) ;
 int PrintErrorMessage (scalar_t__) ;
 int StdOut ;

__attribute__((used)) static
INT
AddJob(
    PWSTR pszComputerName,
    ULONG ulJobHour,
    ULONG ulJobMinute,
    ULONG ulDaysOfMonth,
    UCHAR ucDaysOfWeek,
    BOOL bInteractiveJob,
    BOOL bPeriodicJob,
    PWSTR pszCommand)
{
    AT_INFO InfoBuffer;
    ULONG ulJobId = 0;
    NET_API_STATUS Status;

    InfoBuffer.JobTime = (DWORD_PTR)ulJobHour * 3600000 +
                         (DWORD_PTR)ulJobMinute * 60000;
    InfoBuffer.DaysOfMonth = ulDaysOfMonth;
    InfoBuffer.DaysOfWeek = ucDaysOfWeek;
    InfoBuffer.Flags = (bInteractiveJob ? 0 : JOB_NONINTERACTIVE) |
                       (bPeriodicJob ? JOB_RUN_PERIODICALLY : 0);
    InfoBuffer.Command = pszCommand;

    Status = NetScheduleJobAdd(pszComputerName,
                               (PBYTE)&InfoBuffer,
                               &ulJobId);
    if (Status != NERR_Success)
    {
        PrintErrorMessage(Status);
        return 1;
    }

    ConResPrintf(StdOut, IDS_NEW_JOB, ulJobId);

    return 0;
}
