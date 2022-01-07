
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_bat_choices () ;
 int init_directories_choice () ;
 int init_openwith_choice () ;
 int init_popup_choice () ;
 int init_shortcut_choices () ;
 int init_startmenu_choice () ;
 int init_vimrc_choices () ;

__attribute__((used)) static void
setup_choices(void)
{

    init_bat_choices();


    init_vimrc_choices();


    init_popup_choice();


    init_openwith_choice();


    init_startmenu_choice();


    init_shortcut_choices();


    init_directories_choice();
}
