
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TASKDIALOGCONFIG ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetModuleFileNameW (int *,int *,scalar_t__) ;
 int * strrchrW (int *,char) ;

__attribute__((used)) static WCHAR *taskdialog_get_exe_name(const TASKDIALOGCONFIG *taskconfig, WCHAR *name, DWORD length)
{
    DWORD len = GetModuleFileNameW(((void*)0), name, length);
    if (len && len < length)
    {
        WCHAR *p;
        if ((p = strrchrW(name, '/'))) name = p + 1;
        if ((p = strrchrW(name, '\\'))) name = p + 1;
        return name;
    }
    else
        return ((void*)0);
}
