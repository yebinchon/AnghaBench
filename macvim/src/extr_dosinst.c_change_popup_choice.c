
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* text; } ;


 TYPE_1__* choices ;
 int install_popup ;

__attribute__((used)) static void
change_popup_choice(int idx)
{
    if (install_popup == 0)
    {
 choices[idx].text = "Install an entry for Vim in the popup menu for the right\n    mouse button so that you can edit any file with Vim";
 install_popup = 1;
    }
    else
    {
 choices[idx].text = "Do NOT install an entry for Vim in the popup menu for the\n    right mouse button to edit any file with Vim";
 install_popup = 0;
    }
}
