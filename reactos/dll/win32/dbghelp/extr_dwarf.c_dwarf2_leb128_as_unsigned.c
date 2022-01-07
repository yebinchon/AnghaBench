
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;


 int assert (TYPE_1__*) ;
 unsigned long dwarf2_get_leb128_as_unsigned (int ,int *) ;

__attribute__((used)) static unsigned long dwarf2_leb128_as_unsigned(dwarf2_traverse_context_t* ctx)
{
    unsigned long ret;

    assert(ctx);

    ret = dwarf2_get_leb128_as_unsigned(ctx->data, &ctx->data);

    return ret;
}
