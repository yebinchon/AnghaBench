
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ shi2_max_uses; scalar_t__ shi2_current_uses; int shi2_remark; int shi2_path; int shi2_netname; } ;
typedef int PWSTR ;
typedef TYPE_1__* PSHARE_INFO_2 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 int ConPrintf (int ,char*,...) ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetShareGetInfo (int *,int ,int,int *) ;
 int PrintMessageString (int) ;
 int PrintPaddedMessageString (int,int) ;
 int StdOut ;

NET_API_STATUS
DisplayShare(
    PWSTR pShareName)
{
    PSHARE_INFO_2 pBuffer = ((void*)0);
    INT nPaddedLength = 22;
    NET_API_STATUS Status;

    Status = NetShareGetInfo(((void*)0),
                             pShareName,
                             2,
                             (LPBYTE*)&pBuffer);
    if (Status != NERR_Success)
        return Status;

    PrintPaddedMessageString(4731, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pBuffer->shi2_netname);

    PrintPaddedMessageString(4339, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pBuffer->shi2_path);

    PrintPaddedMessageString(4334, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pBuffer->shi2_remark);

    PrintPaddedMessageString(4735, nPaddedLength);
    if (pBuffer->shi2_max_uses == (DWORD)-1)
        PrintMessageString(4736);
    else
        ConPrintf(StdOut, L"%lu", pBuffer->shi2_max_uses);
    ConPrintf(StdOut, L"\n");

    PrintPaddedMessageString(4737, nPaddedLength);
    if (pBuffer->shi2_current_uses > 0)
        ConPrintf(StdOut, L"%lu", pBuffer->shi2_current_uses);
    ConPrintf(StdOut, L"\n");

    NetApiBufferFree(pBuffer);

    return NERR_Success;
}
