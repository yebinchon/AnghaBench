
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* dwarf2_info; } ;
struct module_format {TYPE_3__ u; } ;
struct TYPE_9__ {int word_size; int const* end_data; int const* data; } ;
typedef TYPE_4__ dwarf2_traverse_context_t ;
struct TYPE_6__ {int size; int const* address; } ;
struct TYPE_7__ {int word_size; TYPE_1__ debug_loc; } ;
typedef unsigned long DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WARN (char*) ;
 unsigned long dwarf2_get_addr (int const*,int ) ;
 int dwarf2_get_u2 (int const*) ;

__attribute__((used)) static BOOL dwarf2_lookup_loclist(const struct module_format* modfmt, const BYTE* start,
                                  unsigned long ip, dwarf2_traverse_context_t* lctx)
{
    DWORD_PTR beg, end;
    const BYTE* ptr = start;
    DWORD len;

    while (ptr < modfmt->u.dwarf2_info->debug_loc.address + modfmt->u.dwarf2_info->debug_loc.size)
    {
        beg = dwarf2_get_addr(ptr, modfmt->u.dwarf2_info->word_size); ptr += modfmt->u.dwarf2_info->word_size;
        end = dwarf2_get_addr(ptr, modfmt->u.dwarf2_info->word_size); ptr += modfmt->u.dwarf2_info->word_size;
        if (!beg && !end) break;
        len = dwarf2_get_u2(ptr); ptr += 2;

        if (beg <= ip && ip < end)
        {
            lctx->data = ptr;
            lctx->end_data = ptr + len;
            lctx->word_size = modfmt->u.dwarf2_info->word_size;
            return TRUE;
        }
        ptr += len;
    }
    WARN("Couldn't find ip in location list\n");
    return FALSE;
}
