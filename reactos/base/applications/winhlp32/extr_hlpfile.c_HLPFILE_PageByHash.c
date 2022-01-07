
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int version; size_t wTOMapLen; int lpszPath; int Context; int * TOMap; } ;
typedef size_t LONG ;
typedef int HLPFILE_PAGE ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;


 int GET_UINT (int *,int) ;
 int * HLPFILE_BPTreeSearch (int ,int ,int ) ;
 int * HLPFILE_Contents (TYPE_1__*,int *) ;
 int * HLPFILE_PageByOffset (TYPE_1__*,int ,int *) ;
 int LongToPtr (size_t) ;
 int WINE_ERR (char*,size_t,int ) ;
 int WINE_TRACE (char*,int ,size_t) ;
 int comp_PageByHash ;
 int debugstr_a (int ) ;

HLPFILE_PAGE *HLPFILE_PageByHash(HLPFILE* hlpfile, LONG lHash, ULONG* relative)
{
    BYTE *ptr;

    if (!hlpfile) return ((void*)0);
    if (!lHash) return HLPFILE_Contents(hlpfile, relative);

    WINE_TRACE("<%s>[%x]\n", debugstr_a(hlpfile->lpszPath), lHash);


    if (hlpfile->version <= 16)
    {
        if (lHash >= hlpfile->wTOMapLen) return ((void*)0);
        return HLPFILE_PageByOffset(hlpfile, hlpfile->TOMap[lHash], relative);
    }

    ptr = HLPFILE_BPTreeSearch(hlpfile->Context, LongToPtr(lHash), comp_PageByHash);
    if (!ptr)
    {
        WINE_ERR("Page of hash %x not found in file %s\n", lHash, debugstr_a(hlpfile->lpszPath));
        return ((void*)0);
    }

    return HLPFILE_PageByOffset(hlpfile, GET_UINT(ptr, 4), relative);
}
