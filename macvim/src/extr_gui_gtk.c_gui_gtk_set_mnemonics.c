
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int label; int name; int * id; struct TYPE_3__* next; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int char_u ;


 int GTK_LABEL (int ) ;
 int gtk_label_set_text_with_mnemonic (int ,char const*) ;
 TYPE_1__* root_menu ;
 int * translate_mnemonic_tag (int ,int) ;
 int vim_free (int *) ;

void
gui_gtk_set_mnemonics(int enable)
{
    vimmenu_T *menu;
    char_u *name;

    for (menu = root_menu; menu != ((void*)0); menu = menu->next)
    {
 if (menu->id == ((void*)0))
     continue;

 name = translate_mnemonic_tag(menu->name, enable);
 gtk_label_set_text_with_mnemonic(GTK_LABEL(menu->label),
      (const char *)name);
 vim_free(name);
    }
}
