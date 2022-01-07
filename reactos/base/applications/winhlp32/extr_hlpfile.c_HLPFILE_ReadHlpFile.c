
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* lpszPath; int wRefCount; int contents_start; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef int LPCSTR ;
typedef TYPE_1__ HLPFILE ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HLPFILE_DoReadHlpFile (TYPE_1__*,int ) ;
 int HLPFILE_FreeHlpFile (TYPE_1__*) ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 TYPE_1__* first_hlpfile ;
 int strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

HLPFILE *HLPFILE_ReadHlpFile(LPCSTR lpszPath)
{
    HLPFILE* hlpfile;

    for (hlpfile = first_hlpfile; hlpfile; hlpfile = hlpfile->next)
    {
        if (!strcmp(lpszPath, hlpfile->lpszPath))
        {
            hlpfile->wRefCount++;
            return hlpfile;
        }
    }

    hlpfile = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                        sizeof(HLPFILE) + strlen(lpszPath) + 1);
    if (!hlpfile) return 0;

    hlpfile->lpszPath = (char*)hlpfile + sizeof(HLPFILE);
    hlpfile->contents_start = 0xFFFFFFFF;
    hlpfile->next = first_hlpfile;
    hlpfile->wRefCount = 1;

    strcpy(hlpfile->lpszPath, lpszPath);

    first_hlpfile = hlpfile;
    if (hlpfile->next) hlpfile->next->prev = hlpfile;

    if (!HLPFILE_DoReadHlpFile(hlpfile, lpszPath))
    {
        HLPFILE_FreeHlpFile(hlpfile);
        hlpfile = 0;
    }

    return hlpfile;
}
