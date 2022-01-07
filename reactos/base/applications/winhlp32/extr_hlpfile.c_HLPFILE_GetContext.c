
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Context; } ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 int HeapAlloc (int ,int ,unsigned int) ;
 int TRUE ;
 int WINE_WARN (char*) ;
 int memcpy (int ,int *,unsigned int) ;

__attribute__((used)) static BOOL HLPFILE_GetContext(HLPFILE *hlpfile)
{
    BYTE *cbuf, *cend;
    unsigned clen;

    if (!HLPFILE_FindSubFile(hlpfile, "|CONTEXT", &cbuf, &cend))
    {WINE_WARN("context0\n"); return FALSE;}

    clen = cend - cbuf;
    hlpfile->Context = HeapAlloc(GetProcessHeap(), 0, clen);
    if (!hlpfile->Context) return FALSE;
    memcpy(hlpfile->Context, cbuf, clen);

    return TRUE;
}
