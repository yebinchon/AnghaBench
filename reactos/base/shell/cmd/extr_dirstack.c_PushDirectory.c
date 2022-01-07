
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int szPath; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef int LPTSTR ;
typedef TYPE_1__* LPDIRENTRY ;
typedef int INT ;


 int DIRENTRY ;
 int FIELD_OFFSET (int ,int ) ;
 int WARN (char*) ;
 int _tcscpy (int ,int ) ;
 int _tcslen (int ) ;
 TYPE_1__* cmd_alloc (int ) ;
 int error_out_of_memory () ;
 TYPE_1__* lpStackBottom ;
 TYPE_1__* lpStackTop ;
 int nErrorLevel ;
 int nStackDepth ;
 int * szPath ;

__attribute__((used)) static INT
PushDirectory (LPTSTR pszPath)
{
    LPDIRENTRY lpDir = cmd_alloc(FIELD_OFFSET(DIRENTRY, szPath[_tcslen(pszPath) + 1]));
    if (!lpDir)
    {
        WARN("Cannot allocate memory for lpDir\n");
        error_out_of_memory();
        return -1;
    }

    lpDir->prev = ((void*)0);
    lpDir->next = lpStackTop;
    if (lpStackTop == ((void*)0))
        lpStackBottom = lpDir;
    else
        lpStackTop->prev = lpDir;
    lpStackTop = lpDir;

    _tcscpy(lpDir->szPath, pszPath);

    nStackDepth++;

    return nErrorLevel = 0;
}
