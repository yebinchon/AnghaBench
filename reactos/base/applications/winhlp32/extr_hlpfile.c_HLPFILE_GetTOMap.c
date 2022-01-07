
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int wTOMapLen; int TOMap; } ;
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

__attribute__((used)) static BOOL HLPFILE_GetTOMap(HLPFILE *hlpfile)
{
    BYTE *cbuf, *cend;
    unsigned clen;

    if (!HLPFILE_FindSubFile(hlpfile, "|TOMAP", &cbuf, &cend))
    {WINE_WARN("no tomap section\n"); return FALSE;}

    clen = cend - cbuf - 9;
    hlpfile->TOMap = HeapAlloc(GetProcessHeap(), 0, clen);
    if (!hlpfile->TOMap) return FALSE;
    memcpy(hlpfile->TOMap, cbuf+9, clen);
    hlpfile->wTOMapLen = clen/4;
    return TRUE;
}
