
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct symt_function {scalar_t__ address; } ;
struct symt_block {int dummy; } ;
struct pending_list {unsigned int num; TYPE_4__* objs; } ;
struct module {int type; } ;
struct TYPE_6__ {scalar_t__ offset; int line_num; int source_idx; scalar_t__ load_offset; } ;
struct TYPE_5__ {int name; int type; int loc; int kind; } ;
struct TYPE_7__ {TYPE_2__ line; TYPE_1__ var; } ;
struct TYPE_8__ {int tag; TYPE_3__ u; } ;


 int DMT_MACHO ;
 int ERR (char*,unsigned int) ;


 int symt_add_func_line (struct module*,struct symt_function*,int ,int ,scalar_t__) ;
 int symt_add_func_local (struct module*,struct symt_function*,int ,int *,struct symt_block*,int ,int ) ;

__attribute__((used)) static void pending_flush(struct pending_list* pending, struct module* module,
                          struct symt_function* func, struct symt_block* block)
{
    unsigned int i;

    for (i = 0; i < pending->num; i++)
    {
        switch (pending->objs[i].tag)
        {
        case 128:
            symt_add_func_local(module, func,
                                pending->objs[i].u.var.kind, &pending->objs[i].u.var.loc,
                                block, pending->objs[i].u.var.type, pending->objs[i].u.var.name);
            break;
        case 129:
            if (module->type == DMT_MACHO)
                pending->objs[i].u.line.offset -= func->address - pending->objs[i].u.line.load_offset;
            symt_add_func_line(module, func, pending->objs[i].u.line.source_idx,
                               pending->objs[i].u.line.line_num, pending->objs[i].u.line.offset);
            break;
        default:
            ERR("Unknown pending object tag %u\n", (unsigned)pending->objs[i].tag);
            break;
        }
    }
    pending->num = 0;
}
