
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int flags; scalar_t__ type; } ;
struct menu {struct menu* next; struct menu* parent; struct menu* list; struct symbol* sym; } ;
struct TYPE_2__ {struct menu* list; } ;
typedef int FILE ;


 int SYMBOL_WRITE ;
 scalar_t__ S_BOOLEAN ;
 int conf_write_symbol (int *,struct symbol*,int *,int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int kconfig_printer_cb ;
 int menu_is_visible (struct menu*) ;
 struct symbol* prop_get_symbol (int ) ;
 TYPE_1__ rootmenu ;
 scalar_t__ strcmp (int ,int ) ;
 int sym_calc_value (struct symbol*) ;
 struct symbol* sym_choice_default (struct symbol*) ;
 int sym_clear_all_valid () ;
 int sym_get_choice_prop (struct symbol*) ;
 int sym_get_string_default (struct symbol*) ;
 int sym_get_string_value (struct symbol*) ;
 scalar_t__ sym_get_tristate_value (struct symbol*) ;
 int sym_is_changable (struct symbol*) ;
 int sym_is_choice (struct symbol*) ;
 scalar_t__ sym_is_choice_value (struct symbol*) ;
 int sym_is_optional (struct symbol*) ;
 scalar_t__ yes ;

int conf_write_defconfig(const char *filename)
{
 struct symbol *sym;
 struct menu *menu;
 FILE *out;

 out = fopen(filename, "w");
 if (!out)
  return 1;

 sym_clear_all_valid();


 menu = rootmenu.list;

 while (menu != ((void*)0))
 {
  sym = menu->sym;
  if (sym == ((void*)0)) {
   if (!menu_is_visible(menu))
    goto next_menu;
  } else if (!sym_is_choice(sym)) {
   sym_calc_value(sym);
   if (!(sym->flags & SYMBOL_WRITE))
    goto next_menu;
   sym->flags &= ~SYMBOL_WRITE;

   if (!sym_is_changable(sym))
    goto next_menu;

   if (strcmp(sym_get_string_value(sym), sym_get_string_default(sym)) == 0)
    goto next_menu;
   if (sym_is_choice_value(sym)) {
    struct symbol *cs;
    struct symbol *ds;

    cs = prop_get_symbol(sym_get_choice_prop(sym));
    ds = sym_choice_default(cs);
    if (!sym_is_optional(cs) && sym == ds) {
     if ((sym->type == S_BOOLEAN) &&
         sym_get_tristate_value(sym) == yes)
      goto next_menu;
    }
   }
   conf_write_symbol(out, sym, &kconfig_printer_cb, ((void*)0));
  }
next_menu:
  if (menu->list != ((void*)0)) {
   menu = menu->list;
  }
  else if (menu->next != ((void*)0)) {
   menu = menu->next;
  } else {
   while ((menu = menu->parent)) {
    if (menu->next != ((void*)0)) {
     menu = menu->next;
     break;
    }
   }
  }
 }
 fclose(out);
 return 0;
}
