
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cce_user {int mask; int value; int notdone; int done; int name; } ;
typedef int WCHAR ;
typedef int HANDLE ;


 scalar_t__ WriteProcessMemory (int ,void*,int*,int,int *) ;
 int wcscmp (int*,int ) ;

__attribute__((used)) static int change_channel_CB(HANDLE hProcess, void* addr, WCHAR* buffer, void* pmt)
{
    struct cce_user* user = (struct cce_user*)pmt;

    if (!user->name || !wcscmp(buffer + 1, user->name))
    {
        buffer[0] = (buffer[0] & ~user->mask) | (user->value & user->mask);
        if (WriteProcessMemory(hProcess, addr, buffer, 1, ((void*)0)))
            user->done++;
        else
            user->notdone++;
    }
    return 1;
}
