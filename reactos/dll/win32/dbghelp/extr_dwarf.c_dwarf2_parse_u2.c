
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;


 unsigned short dwarf2_get_u2 (int) ;

__attribute__((used)) static unsigned short dwarf2_parse_u2(dwarf2_traverse_context_t* ctx)
{
    unsigned short uvalue = dwarf2_get_u2(ctx->data);
    ctx->data += 2;
    return uvalue;
}
