
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msc_debug_info {int nomap; TYPE_1__* omapp; } ;
struct TYPE_2__ {unsigned int from; unsigned int to; } ;
typedef TYPE_1__ OMAP_DATA ;



__attribute__((used)) static unsigned int codeview_map_offset(const struct msc_debug_info* msc_dbg,
                                        unsigned int offset)
{
    int nomap = msc_dbg->nomap;
    const OMAP_DATA* omapp = msc_dbg->omapp;
    int i;

    if (!nomap || !omapp) return offset;


    for (i = 0; i < nomap - 1; i++)
        if (omapp[i].from <= offset && omapp[i+1].from > offset)
            return !omapp[i].to ? 0 : omapp[i].to + (offset - omapp[i].from);

    return 0;
}
