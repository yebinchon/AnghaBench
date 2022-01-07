
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* name; } ;
struct symtab_elt {int used; TYPE_4__ const* symp; TYPE_2__* compiland; TYPE_1__ ht_elt; } ;
struct symt_compiland {int source; } ;
struct symt {int dummy; } ;
struct TYPE_8__ {int ModuleName; } ;
struct module {TYPE_3__ module; } ;
struct hash_table_iter {int dummy; } ;
struct hash_table {int dummy; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
struct TYPE_7__ {int source; } ;
typedef TYPE_4__ Elf_Sym ;


 int FIXME (char*,char const*,char const*,...) ;
 int debugstr_w (int ) ;
 int hash_table_iter_init (struct hash_table const*,struct hash_table_iter*,char const*) ;
 struct symtab_elt* hash_table_iter_up (struct hash_table_iter*) ;
 char* source_get (struct module const*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const Elf_Sym* elf_lookup_symtab(const struct module* module,
                                          const struct hash_table* ht_symtab,
                                          const char* name, const struct symt* compiland)
{
    struct symtab_elt* weak_result = ((void*)0);
    struct symtab_elt* result = ((void*)0);
    struct hash_table_iter hti;
    struct symtab_elt* ste;
    const char* compiland_name;
    const char* compiland_basename;
    const char* base;





    if (compiland)
    {
        compiland_name = source_get(module,
                                    ((const struct symt_compiland*)compiland)->source);
        compiland_basename = strrchr(compiland_name, '/');
        if (!compiland_basename++) compiland_basename = compiland_name;
    }
    else compiland_name = compiland_basename = ((void*)0);

    hash_table_iter_init(ht_symtab, &hti, name);
    while ((ste = hash_table_iter_up(&hti)))
    {
        if (ste->used || strcmp(ste->ht_elt.name, name)) continue;

        weak_result = ste;
        if ((ste->compiland && !compiland_name) || (!ste->compiland && compiland_name))
            continue;
        if (ste->compiland && compiland_name)
        {
            const char* filename = source_get(module, ste->compiland->source);
            if (strcmp(filename, compiland_name))
            {
                base = strrchr(filename, '/');
                if (!base++) base = filename;
                if (strcmp(base, compiland_basename)) continue;
            }
        }
        if (result)
        {
            FIXME("Already found symbol %s (%s) in symtab %s @%08x and %s @%08x\n",
                  name, compiland_name,
                  source_get(module, result->compiland->source), (unsigned int)result->symp->st_value,
                  source_get(module, ste->compiland->source), (unsigned int)ste->symp->st_value);
        }
        else
        {
            result = ste;
            ste->used = 1;
        }
    }
    if (!result && !(result = weak_result))
    {
        FIXME("Couldn't find symbol %s!%s in symtab\n",
              debugstr_w(module->module.ModuleName), name);
        return ((void*)0);
    }
    return result->symp;
}
