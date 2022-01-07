
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_ppid ;
 int s_restored_ppid ;

int LSAPI_Set_Restored_Parent_Pid(int pid)
{
    int old_ppid = s_ppid;
    s_restored_ppid = pid;
    return old_ppid;
}
