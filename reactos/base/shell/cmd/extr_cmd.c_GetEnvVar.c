
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int LPCTSTR ;


 int GetEnvironmentVariable (int ,int *,int) ;
 int * cmd_alloc (int) ;
 int cmd_free (int *) ;

LPTSTR
GetEnvVar(LPCTSTR varName)
{
    static LPTSTR ret = ((void*)0);
    UINT size;

    cmd_free(ret);
    ret = ((void*)0);
    size = GetEnvironmentVariable(varName, ((void*)0), 0);
    if (size > 0)
    {
        ret = cmd_alloc(size * sizeof(TCHAR));
        if (ret != ((void*)0))
            GetEnvironmentVariable(varName, ret, size + 1);
    }
    return ret;
}
