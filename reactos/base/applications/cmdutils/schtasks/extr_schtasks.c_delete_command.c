
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ITaskFolder ;
typedef int HRESULT ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int ITaskFolder_DeleteTask (int *,int ,int ) ;
 int ITaskFolder_Release (int *) ;
 int SysAllocString (int const*) ;
 int SysFreeString (int ) ;
 int TRACE (char*) ;
 int debugstr_w (int *) ;
 int f_optW ;
 int * get_tasks_root_folder () ;
 int strcmpiW (int *,int ) ;
 int tn_optW ;

__attribute__((used)) static int delete_command(int argc, WCHAR *argv[])
{
    const WCHAR *task_name = ((void*)0);
    ITaskFolder *root = ((void*)0);
    BSTR str;
    HRESULT hres;

    while (argc) {
        if (!strcmpiW(argv[0], f_optW)) {
            TRACE("force opt\n");
            argc--;
            argv++;
        }else if(!strcmpiW(argv[0], tn_optW)) {
            if (argc < 2) {
                FIXME("Missing /tn value\n");
                return 1;
            }

            if (task_name) {
                FIXME("Duplicated /tn argument\n");
                return 1;
            }

            task_name = argv[1];
            argc -= 2;
            argv += 2;
        }else {
            FIXME("Unsupported argument %s\n", debugstr_w(argv[0]));
            return 1;
        }
    }

    if (!task_name) {
        FIXME("Missing /tn argument\n");
        return 1;
    }

    root = get_tasks_root_folder();
    if (!root)
        return 1;

    str = SysAllocString(task_name);
    hres = ITaskFolder_DeleteTask(root, str, 0);
    SysFreeString(str);
    ITaskFolder_Release(root);
    if (FAILED(hres))
        return 1;

    return 0;
}
