
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msc_debug_info {int nsect; TYPE_2__* module; TYPE_3__* sectp; } ;
struct TYPE_6__ {unsigned int VirtualAddress; } ;
struct TYPE_4__ {unsigned long BaseOfImage; } ;
struct TYPE_5__ {TYPE_1__ module; } ;
typedef TYPE_3__ IMAGE_SECTION_HEADER ;


 unsigned long codeview_map_offset (struct msc_debug_info const*,unsigned int) ;

__attribute__((used)) static unsigned long codeview_get_address(const struct msc_debug_info* msc_dbg,
                                          unsigned seg, unsigned offset)
{
    int nsect = msc_dbg->nsect;
    const IMAGE_SECTION_HEADER* sectp = msc_dbg->sectp;

    if (!seg || seg > nsect) return 0;
    return msc_dbg->module->module.BaseOfImage +
        codeview_map_offset(msc_dbg, sectp[seg-1].VirtualAddress + offset);
}
