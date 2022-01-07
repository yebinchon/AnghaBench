
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int lpszPath; TYPE_1__* first_page; } ;
struct TYPE_5__ {int offset; struct TYPE_5__* next; } ;
typedef int LONG ;
typedef TYPE_1__ HLPFILE_PAGE ;
typedef TYPE_2__ HLPFILE ;


 int WINE_ERR (char*,int,int ) ;
 int WINE_TRACE (char*,int ,int) ;
 int debugstr_a (int ) ;

HLPFILE_PAGE *HLPFILE_PageByOffset(HLPFILE* hlpfile, LONG offset, ULONG* relative)
{
    HLPFILE_PAGE* page;
    HLPFILE_PAGE* found;

    if (!hlpfile) return 0;

    WINE_TRACE("<%s>[%x]\n", debugstr_a(hlpfile->lpszPath), offset);

    if (offset == 0xFFFFFFFF) return ((void*)0);
    page = ((void*)0);

    for (found = ((void*)0), page = hlpfile->first_page; page; page = page->next)
    {
        if (page->offset <= offset && (!found || found->offset < page->offset))
        {
            *relative = offset - page->offset;
            found = page;
        }
    }
    if (!found)
        WINE_ERR("Page of offset %u not found in file %s\n",
                 offset, debugstr_a(hlpfile->lpszPath));
    return found;
}
