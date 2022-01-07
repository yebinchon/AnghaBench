
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef size_t DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,size_t*) ;
 int MAX_PATH ;
 int TRUE ;
 size_t* enumerate_processes (size_t*) ;
 scalar_t__ get_process_name_from_pid (size_t,char*,int ) ;
 int lstrcmpW (char const*,char*) ;

__attribute__((used)) static BOOL is_netmeeting_running(void)
{
    static const WCHAR conf_exe[] = {'c','o','n','f','.','e','x','e',0};

    DWORD list_count;
    DWORD *pid_list = enumerate_processes(&list_count);

    if (pid_list)
    {
        DWORD i;
        WCHAR process_name[MAX_PATH];

        for (i = 0; i < list_count; i++)
        {
            if (get_process_name_from_pid(pid_list[i], process_name, ARRAY_SIZE(process_name)) &&
                !lstrcmpW(conf_exe, process_name))
            {
                HeapFree(GetProcessHeap(), 0, pid_list);
                return TRUE;
            }
        }
        HeapFree(GetProcessHeap(), 0, pid_list);
    }

    return FALSE;
}
