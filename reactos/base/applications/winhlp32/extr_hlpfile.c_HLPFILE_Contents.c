
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {int * first_page; int contents_start; } ;
typedef int HLPFILE_PAGE ;
typedef TYPE_1__ HLPFILE ;


 int * HLPFILE_PageByOffset (TYPE_1__*,int ,scalar_t__*) ;

__attribute__((used)) static HLPFILE_PAGE* HLPFILE_Contents(HLPFILE *hlpfile, ULONG* relative)
{
    HLPFILE_PAGE* page = ((void*)0);

    if (!hlpfile) return ((void*)0);

    page = HLPFILE_PageByOffset(hlpfile, hlpfile->contents_start, relative);
    if (!page)
    {
        page = hlpfile->first_page;
        *relative = 0;
    }
    return page;
}
