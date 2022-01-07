
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* kwdata; void* kwbtree; } ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 void* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,void*) ;
 int TRUE ;
 int WINE_ERR (char*) ;
 int memcpy (void*,int *,unsigned int) ;

__attribute__((used)) static BOOL HLPFILE_GetKeywords(HLPFILE *hlpfile)
{
    BYTE *cbuf, *cend;
    unsigned clen;

    if (!HLPFILE_FindSubFile(hlpfile, "|KWBTREE", &cbuf, &cend)) return FALSE;
    clen = cend - cbuf;
    hlpfile->kwbtree = HeapAlloc(GetProcessHeap(), 0, clen);
    if (!hlpfile->kwbtree) return FALSE;
    memcpy(hlpfile->kwbtree, cbuf, clen);

    if (!HLPFILE_FindSubFile(hlpfile, "|KWDATA", &cbuf, &cend))
    {
        WINE_ERR("corrupted help file: kwbtree present but kwdata absent\n");
        HeapFree(GetProcessHeap(), 0, hlpfile->kwbtree);
        return FALSE;
    }
    clen = cend - cbuf;
    hlpfile->kwdata = HeapAlloc(GetProcessHeap(), 0, clen);
    if (!hlpfile->kwdata)
    {
        HeapFree(GetProcessHeap(), 0, hlpfile->kwdata);
        return FALSE;
    }
    memcpy(hlpfile->kwdata, cbuf, clen);

    return TRUE;
}
