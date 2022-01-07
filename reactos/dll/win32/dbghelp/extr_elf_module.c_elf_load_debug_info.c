
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pool {int dummy; } ;
struct TYPE_6__ {TYPE_2__* elf_info; } ;
struct module_format {TYPE_3__ u; } ;
struct TYPE_4__ {int LoadedImageName; } ;
struct module {scalar_t__ type; TYPE_1__ module; struct module_format** format_info; } ;
struct hash_table {int dummy; } ;
struct TYPE_5__ {int file_map; } ;
typedef int BOOL ;


 size_t DFI_ELF ;
 scalar_t__ DMT_ELF ;
 int ERR (char*,int ) ;
 int FALSE ;
 int TRUE ;
 int debugstr_w (int ) ;
 int elf_load_debug_info_from_map (struct module*,int *,struct pool*,struct hash_table*) ;
 int hash_table_init (struct pool*,struct hash_table*,int) ;
 int pool_destroy (struct pool*) ;
 int pool_init (struct pool*,int) ;

BOOL elf_load_debug_info(struct module* module)
{
    BOOL ret = TRUE;
    struct pool pool;
    struct hash_table ht_symtab;
    struct module_format* modfmt;

    if (module->type != DMT_ELF || !(modfmt = module->format_info[DFI_ELF]) || !modfmt->u.elf_info)
    {
 ERR("Bad elf module '%s'\n", debugstr_w(module->module.LoadedImageName));
 return FALSE;
    }

    pool_init(&pool, 65536);
    hash_table_init(&pool, &ht_symtab, 256);

    ret = elf_load_debug_info_from_map(module, &modfmt->u.elf_info->file_map, &pool, &ht_symtab);

    pool_destroy(&pool);
    return ret;
}
