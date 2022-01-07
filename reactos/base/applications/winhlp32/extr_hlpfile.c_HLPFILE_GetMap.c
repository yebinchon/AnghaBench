
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* offset; void* lMap; } ;
struct TYPE_5__ {unsigned int wMapLen; TYPE_2__* Map; } ;
typedef int HLPFILE_MAP ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 void* GET_UINT (int *,unsigned int) ;
 unsigned int GET_USHORT (int *,int) ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 TYPE_2__* HeapAlloc (int ,int ,unsigned int) ;
 int TRUE ;
 int WINE_WARN (char*) ;

__attribute__((used)) static BOOL HLPFILE_GetMap(HLPFILE *hlpfile)
{
    BYTE *cbuf, *cend;
    unsigned entries, i;

    if (!HLPFILE_FindSubFile(hlpfile, "|CTXOMAP", &cbuf, &cend))
    {WINE_WARN("no map section\n"); return FALSE;}

    entries = GET_USHORT(cbuf, 9);
    hlpfile->Map = HeapAlloc(GetProcessHeap(), 0, entries * sizeof(HLPFILE_MAP));
    if (!hlpfile->Map) return FALSE;
    hlpfile->wMapLen = entries;
    for (i = 0; i < entries; i++)
    {
        hlpfile->Map[i].lMap = GET_UINT(cbuf+11,i*8);
        hlpfile->Map[i].offset = GET_UINT(cbuf+11,i*8+4);
    }
    return TRUE;
}
