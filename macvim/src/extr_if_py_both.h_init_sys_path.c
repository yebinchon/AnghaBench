
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int EMSG (int ) ;
 int PyErr_Clear () ;
 scalar_t__ PyList_Append (int *,int *) ;
 scalar_t__ PyList_Check (int *) ;
 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int ,int *) ;
 int * PyObject_GetAttrString (int ,char*) ;
 int * PySys_GetObject (char*) ;
 scalar_t__ PySys_SetObject (char*,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int VimTryEnd () ;
 int VimTryStart () ;
 int _ (char*) ;
 int vim_module ;
 int * vim_special_path_object ;

__attribute__((used)) static int
init_sys_path(void)
{
    PyObject *path;
    PyObject *path_hook;
    PyObject *path_hooks;

    if (!(path_hook = PyObject_GetAttrString(vim_module, "path_hook")))
 return -1;

    if (!(path_hooks = PySys_GetObject("path_hooks")))
    {
 PyErr_Clear();
 path_hooks = PyList_New(1);
 PyList_SET_ITEM(path_hooks, 0, path_hook);
 if (PySys_SetObject("path_hooks", path_hooks))
 {
     Py_DECREF(path_hooks);
     return -1;
 }
 Py_DECREF(path_hooks);
    }
    else if (PyList_Check(path_hooks))
    {
 if (PyList_Append(path_hooks, path_hook))
 {
     Py_DECREF(path_hook);
     return -1;
 }
 Py_DECREF(path_hook);
    }
    else
    {
 VimTryStart();
 EMSG(_("Failed to set path hook: sys.path_hooks is not a list\n"
        "You should now do the following:\n"
        "- append vim.path_hook to sys.path_hooks\n"
        "- append vim.VIM_SPECIAL_PATH to sys.path\n"));
 VimTryEnd();
 Py_DECREF(path_hook);
 return 0;
    }

    if (!(path = PySys_GetObject("path")))
    {
 PyErr_Clear();
 path = PyList_New(1);
 Py_INCREF(vim_special_path_object);
 PyList_SET_ITEM(path, 0, vim_special_path_object);
 if (PySys_SetObject("path", path))
 {
     Py_DECREF(path);
     return -1;
 }
 Py_DECREF(path);
    }
    else if (PyList_Check(path))
    {
 if (PyList_Append(path, vim_special_path_object))
     return -1;
    }
    else
    {
 VimTryStart();
 EMSG(_("Failed to set path: sys.path is not a list\n"
        "You should now append vim.VIM_SPECIAL_PATH to sys.path"));
 VimTryEnd();
    }

    return 0;
}
