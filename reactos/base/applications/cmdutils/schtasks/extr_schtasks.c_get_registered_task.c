
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ITaskFolder ;
typedef int IRegisteredTask ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int ITaskFolder_GetTask (int *,int ,int **) ;
 int ITaskFolder_Release (int *) ;
 int SysAllocString (int const*) ;
 int SysFreeString (int ) ;
 int * get_tasks_root_folder () ;

__attribute__((used)) static IRegisteredTask *get_registered_task(const WCHAR *name)
{
    IRegisteredTask *registered_task;
    ITaskFolder *root;
    BSTR str;
    HRESULT hres;

    root = get_tasks_root_folder();
    if (!root)
        return ((void*)0);

    str = SysAllocString(name);
    hres = ITaskFolder_GetTask(root, str, &registered_task);
    SysFreeString(str);
    ITaskFolder_Release(root);
    if (FAILED(hres)) {
        FIXME("GetTask failed: %08x\n", hres);
        return ((void*)0);
    }

    return registered_task;
}
