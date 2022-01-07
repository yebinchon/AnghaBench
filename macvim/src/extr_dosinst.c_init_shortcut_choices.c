
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int installfunc; int (* changefunc ) (size_t) ;void* active; scalar_t__ arg; int * text; } ;


 int add_dummy_choice () ;
 size_t choice_count ;
 TYPE_1__* choices ;
 void* has_gvim ;
 int install_shortcut_evim ;
 int install_shortcut_gview ;
 int install_shortcut_gvim ;
 int toggle_shortcut_choice (size_t) ;

__attribute__((used)) static void
init_shortcut_choices(void)
{
    add_dummy_choice();
    add_dummy_choice();
    add_dummy_choice();

}
