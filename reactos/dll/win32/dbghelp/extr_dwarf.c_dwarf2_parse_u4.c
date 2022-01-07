
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;


 unsigned long dwarf2_get_u4 (int) ;

__attribute__((used)) static unsigned long dwarf2_parse_u4(dwarf2_traverse_context_t* ctx)
{
    unsigned long uvalue = dwarf2_get_u4(ctx->data);
    ctx->data += 4;
    return uvalue;
}
