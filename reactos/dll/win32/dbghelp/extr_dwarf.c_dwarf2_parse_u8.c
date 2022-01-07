
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;
typedef int DWORD64 ;


 int dwarf2_get_u8 (int) ;

__attribute__((used)) static DWORD64 dwarf2_parse_u8(dwarf2_traverse_context_t* ctx)
{
    DWORD64 uvalue = dwarf2_get_u8(ctx->data);
    ctx->data += 8;
    return uvalue;
}
