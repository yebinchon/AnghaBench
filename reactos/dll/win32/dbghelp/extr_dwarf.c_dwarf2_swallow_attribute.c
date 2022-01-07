
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned int word_size; unsigned int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;
struct TYPE_11__ {int form; int attribute; } ;
typedef TYPE_2__ dwarf2_abbrev_entry_attr_t ;
 int FIXME (char*,int) ;
 int TRACE (char*,int ,int) ;
 unsigned int dwarf2_leb128_as_unsigned (TYPE_1__*) ;
 unsigned int dwarf2_leb128_length (TYPE_1__*) ;
 unsigned int dwarf2_parse_byte (TYPE_1__*) ;
 unsigned int dwarf2_parse_u2 (TYPE_1__*) ;
 unsigned int dwarf2_parse_u4 (TYPE_1__*) ;
 int strlen (char const*) ;

__attribute__((used)) static void dwarf2_swallow_attribute(dwarf2_traverse_context_t* ctx,
                                     const dwarf2_abbrev_entry_attr_t* abbrev_attr)
{
    unsigned step;

    TRACE("(attr:0x%lx,form:0x%lx)\n", abbrev_attr->attribute, abbrev_attr->form);

    switch (abbrev_attr->form)
    {
    case 138: step = 0; break;
    case 133:
    case 148: step = ctx->word_size; break;
    case 139:
    case 143:
    case 137: step = 1; break;
    case 142:
    case 136: step = 2; break;
    case 141:
    case 135:
    case 129: step = 4; break;
    case 140:
    case 134: step = 8; break;
    case 131:
    case 132:
    case 128: step = dwarf2_leb128_length(ctx); break;
    case 130: step = strlen((const char*)ctx->data) + 1; break;
    case 147: step = dwarf2_leb128_as_unsigned(ctx); break;
    case 146: step = dwarf2_parse_byte(ctx); break;
    case 145: step = dwarf2_parse_u2(ctx); break;
    case 144: step = dwarf2_parse_u4(ctx); break;
    default:
        FIXME("Unhandled attribute form %lx\n", abbrev_attr->form);
        return;
    }
    ctx->data += step;
}
