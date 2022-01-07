
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int * pFileName; } ;
typedef int TCHAR ;
typedef int * PWSTR ;
typedef TYPE_1__* PCONSOLE_CHILDFRM_WND ;


 int DPRINT1 (char*,TYPE_1__*,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int _tcscpy (int *,int *) ;
 int _tcslen (int *) ;

__attribute__((used)) static VOID
SetFileName(
    PCONSOLE_CHILDFRM_WND Info,
    PWSTR pFileName)
{
    DPRINT1("SetFileName(&p \'%S\')\n", Info, pFileName);

    if (Info->pFileName != ((void*)0))
    {
        HeapFree(GetProcessHeap(), 0, Info->pFileName);
        Info->pFileName = ((void*)0);
    }

    if (pFileName != ((void*)0))
    {
        Info->pFileName = HeapAlloc(GetProcessHeap(),
                                    0,
                                    (_tcslen(pFileName) + 1) * sizeof(TCHAR));
        if (Info->pFileName != ((void*)0))
            _tcscpy(Info->pFileName, pFileName);
    }
}
