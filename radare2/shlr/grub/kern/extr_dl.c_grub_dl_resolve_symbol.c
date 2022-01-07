
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* grub_symbol_t ;
struct TYPE_3__ {void* addr; int name; struct TYPE_3__* next; } ;


 scalar_t__ grub_strcmp (int ,char const*) ;
 size_t grub_symbol_hash (char const*) ;
 TYPE_1__** grub_symtab ;

__attribute__((used)) static void *
grub_dl_resolve_symbol (const char *name)
{
  grub_symbol_t sym;

  for (sym = grub_symtab[grub_symbol_hash (name)]; sym; sym = sym->next)
    if (grub_strcmp (sym->name, name) == 0)
      return sym->addr;

  return 0;
}
