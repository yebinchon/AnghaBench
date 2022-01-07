
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMENU ;


 int GetSubMenu (int ,int) ;

__attribute__((used)) static HMENU get_tb_menu(HMENU menu)
{
    HMENU menu_view = GetSubMenu(menu, 1);

    return GetSubMenu(menu_view, 0);
}
