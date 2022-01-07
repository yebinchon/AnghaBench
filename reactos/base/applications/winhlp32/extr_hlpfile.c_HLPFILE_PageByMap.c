
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {unsigned int wMapLen; int lpszPath; TYPE_1__* Map; } ;
struct TYPE_5__ {scalar_t__ lMap; int offset; } ;
typedef scalar_t__ LONG ;
typedef int HLPFILE_PAGE ;
typedef TYPE_2__ HLPFILE ;


 int * HLPFILE_PageByOffset (TYPE_2__*,int ,int *) ;
 int WINE_ERR (char*,scalar_t__,int ) ;
 int WINE_TRACE (char*,int ,scalar_t__) ;
 int debugstr_a (int ) ;

HLPFILE_PAGE *HLPFILE_PageByMap(HLPFILE* hlpfile, LONG lMap, ULONG* relative)
{
    unsigned int i;

    if (!hlpfile) return 0;

    WINE_TRACE("<%s>[%x]\n", debugstr_a(hlpfile->lpszPath), lMap);

    for (i = 0; i < hlpfile->wMapLen; i++)
    {
        if (hlpfile->Map[i].lMap == lMap)
            return HLPFILE_PageByOffset(hlpfile, hlpfile->Map[i].offset, relative);
    }

    WINE_ERR("Page of Map %x not found in file %s\n", lMap, debugstr_a(hlpfile->lpszPath));
    return ((void*)0);
}
