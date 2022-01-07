
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int FALSE ;
 int GetSelectedProcessId () ;
 int ListView_DeleteAllItems (scalar_t__) ;
 int OpenProcess (int,int ,int ) ;
 int PROCESS_VM_OPERATION ;
 int PROCESS_VM_READ ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_SETREDRAW ;
 int enum_channel (int ,int ,void*,int ) ;
 int list_channel_CB ;

__attribute__((used)) static void DebugChannels_FillList(HWND hChannelLV)
{
    HANDLE hProcess;

    (void)ListView_DeleteAllItems(hChannelLV);

    hProcess = OpenProcess(PROCESS_VM_OPERATION | PROCESS_VM_READ, FALSE, GetSelectedProcessId());
    if (!hProcess) return;
    SendMessageW(hChannelLV, WM_SETREDRAW, FALSE, 0);
    enum_channel(hProcess, list_channel_CB, (void*)hChannelLV, TRUE);
    SendMessageW(hChannelLV, WM_SETREDRAW, TRUE, 0);
    CloseHandle(hProcess);
}
