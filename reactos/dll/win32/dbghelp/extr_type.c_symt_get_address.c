
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symt_thunk {int address; } ;
struct symt_public {int address; } ;
struct TYPE_6__ {int offset; } ;
struct symt_hierarchy_point {TYPE_3__ loc; struct symt* parent; } ;
struct symt_function {int address; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ var; } ;
struct symt_data {TYPE_2__ u; int kind; } ;
struct symt_compiland {int address; } ;
struct symt {int tag; } ;
typedef int ULONG64 ;
typedef int BOOL ;




 int FALSE ;
 int FIXME (char*,int ) ;
 int TRUE ;
 int symt_get_tag_str (int) ;

BOOL symt_get_address(const struct symt* type, ULONG64* addr)
{
    switch (type->tag)
    {
    case 134:
        switch (((const struct symt_data*)type)->kind)
        {
        case 136:
        case 137:
            *addr = ((const struct symt_data*)type)->u.var.offset;
            break;
        default: return FALSE;
        }
        break;
    case 131:
        *addr = ((const struct symt_function*)type)->address;
        break;
    case 129:
        *addr = ((const struct symt_public*)type)->address;
        break;
    case 132:
    case 133:
    case 130:
        if (!((const struct symt_hierarchy_point*)type)->parent ||
            !symt_get_address(((const struct symt_hierarchy_point*)type)->parent, addr))
            return FALSE;
        *addr += ((const struct symt_hierarchy_point*)type)->loc.offset;
        break;
    case 128:
        *addr = ((const struct symt_thunk*)type)->address;
        break;
    case 135:
        *addr = ((const struct symt_compiland*)type)->address;
        break;
    default:
        FIXME("Unsupported sym-tag %s for get-address\n", symt_get_tag_str(type->tag));
        return FALSE;
    }
    return TRUE;
}
