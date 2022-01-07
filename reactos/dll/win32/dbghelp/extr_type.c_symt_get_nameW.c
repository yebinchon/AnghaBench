
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 char* symt_get_name (struct symt const*) ;

WCHAR* symt_get_nameW(const struct symt* sym)
{
    const char* name = symt_get_name(sym);
    WCHAR* nameW;
    DWORD sz;

    if (!name) return ((void*)0);
    sz = MultiByteToWideChar(CP_ACP, 0, name, -1, ((void*)0), 0);
    if ((nameW = HeapAlloc(GetProcessHeap(), 0, sz * sizeof(WCHAR))))
        MultiByteToWideChar(CP_ACP, 0, name, -1, nameW, sz);
    return nameW;
}
