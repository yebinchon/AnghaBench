
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int * strings; } ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef TYPE_1__ ASSEMBLY ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static LPWSTR assembly_dup_str(const ASSEMBLY *assembly, DWORD index)
{
    int len;
    LPWSTR cpy;
    LPCSTR str = (LPCSTR)&assembly->strings[index];

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);

    if ((cpy = heap_alloc(len * sizeof(WCHAR))))
        MultiByteToWideChar(CP_ACP, 0, str, -1, cpy, len);

    return cpy;
}
