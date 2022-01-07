
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int pszValue; int pszName; } ;
struct TYPE_5__ {int * pszValue; int * pszName; } ;
typedef TYPE_1__ STRENTRYW ;
typedef TYPE_2__ STRENTRYA ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static void strentry_atow(const STRENTRYA *aentry, STRENTRYW *wentry)
{
    DWORD name_len, val_len;

    name_len = MultiByteToWideChar(CP_ACP, 0, aentry->pszName, -1, ((void*)0), 0);
    val_len = MultiByteToWideChar(CP_ACP, 0, aentry->pszValue, -1, ((void*)0), 0);

    wentry->pszName = HeapAlloc(GetProcessHeap(), 0, name_len * sizeof(WCHAR));
    wentry->pszValue = HeapAlloc(GetProcessHeap(), 0, val_len * sizeof(WCHAR));

    MultiByteToWideChar(CP_ACP, 0, aentry->pszName, -1, wentry->pszName, name_len);
    MultiByteToWideChar(CP_ACP, 0, aentry->pszValue, -1, wentry->pszValue, val_len);
}
