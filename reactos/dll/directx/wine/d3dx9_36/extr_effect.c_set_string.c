
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static HRESULT set_string(char **param_data, const char *string)
{
    HeapFree(GetProcessHeap(), 0, *param_data);
    *param_data = HeapAlloc(GetProcessHeap(), 0, strlen(string) + 1);
    if (!*param_data)
    {
        ERR("Out of memory.\n");
        return E_OUTOFMEMORY;
    }
    strcpy(*param_data, string);
    return D3D_OK;
}
