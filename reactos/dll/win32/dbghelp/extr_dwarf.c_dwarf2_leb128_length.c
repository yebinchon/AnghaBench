
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;



__attribute__((used)) static unsigned dwarf2_leb128_length(const dwarf2_traverse_context_t* ctx)
{
    unsigned ret;
    for (ret = 0; ctx->data[ret] & 0x80; ret++);
    return ret + 1;
}
