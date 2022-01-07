
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ word_size; int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;


 unsigned long dwarf2_get_addr (int ,scalar_t__) ;

__attribute__((used)) static unsigned long dwarf2_parse_addr(dwarf2_traverse_context_t* ctx)
{
    unsigned long ret = dwarf2_get_addr(ctx->data, ctx->word_size);
    ctx->data += ctx->word_size;
    return ret;
}
