
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
struct symt_function {TYPE_1__ symt; } ;
struct msc_debug_info {int module; } ;
struct codeview_lt2blk_lines {unsigned int nlines; TYPE_2__* l; int start; int seg; int file_offset; int size; } ;
struct codeview_linetab2_file {int offset; } ;
struct codeview_linetab2 {int header; int size_of_block; } ;
struct TYPE_4__ {int lineno; int offset; } ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;




 int SymTagFunction ;
 int TRACE (char*,...) ;
 int WARN (char*,int ,int ,int ,int) ;
 int codeview_get_address (struct msc_debug_info const*,int ,int ) ;
 struct codeview_linetab2* codeview_linetab2_next_block (struct codeview_linetab2 const*) ;
 unsigned int source_new (int ,int *,char const*) ;
 int symt_add_func_line (int ,struct symt_function*,unsigned int,int,int ) ;
 scalar_t__ symt_find_nearest (int ,int ) ;

__attribute__((used)) static void codeview_snarf_linetab2(const struct msc_debug_info* msc_dbg, const BYTE* linetab, DWORD size,
                                    const char* strimage, DWORD strsize)
{
    unsigned i;
    DWORD_PTR addr;
    const struct codeview_linetab2* lt2;
    const struct codeview_linetab2* lt2_files = ((void*)0);
    const struct codeview_lt2blk_lines* lines_blk;
    const struct codeview_linetab2_file*fd;
    unsigned source;
    struct symt_function* func;


    lt2 = (const struct codeview_linetab2*)linetab;
    while ((const BYTE*)(lt2 + 1) < linetab + size)
    {
        if (lt2->header == 129)
        {
            lt2_files = lt2;
            break;
        }
        lt2 = codeview_linetab2_next_block(lt2);
    }
    if (!lt2_files)
    {
        TRACE("No LT2_FILES_BLOCK found\n");
        return;
    }

    lt2 = (const struct codeview_linetab2*)linetab;
    while ((const BYTE*)(lt2 + 1) < linetab + size)
    {

        switch (lt2->header)
        {
        case 128:

            if (lt2->size_of_block < sizeof (struct codeview_lt2blk_lines)) break;
            lines_blk = (const struct codeview_lt2blk_lines*)lt2;

            addr = codeview_get_address(msc_dbg, lines_blk->seg, lines_blk->start);
            TRACE("block from %04x:%08x #%x (%x lines)\n",
                  lines_blk->seg, lines_blk->start, lines_blk->size, lines_blk->nlines);
            fd = (const struct codeview_linetab2_file*)((const char*)lt2_files + 8 + lines_blk->file_offset);

            source = source_new(msc_dbg->module, ((void*)0), strimage + fd->offset);
            func = (struct symt_function*)symt_find_nearest(msc_dbg->module, addr);

            if (!func || func->symt.tag != SymTagFunction)
            {
                WARN("--not a func at %04x:%08x %lx tag=%d\n",
                     lines_blk->seg, lines_blk->start, addr, func ? func->symt.tag : -1);
                break;
            }
            for (i = 0; i < lines_blk->nlines; i++)
            {
                symt_add_func_line(msc_dbg->module, func, source,
                                   lines_blk->l[i].lineno ^ 0x80000000,
                                   lines_blk->l[i].offset);
            }
            break;
        case 129:
            break;
        default:
            TRACE("Block end %x\n", lt2->header);
            lt2 = (const struct codeview_linetab2*)((const char*)linetab + size);
            continue;
        }
        lt2 = codeview_linetab2_next_block(lt2);
    }
}
