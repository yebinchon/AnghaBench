
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {int active; int * installfunc; int (* changefunc ) (size_t) ;} ;


 int add_dummy_choice () ;
 int change_popup_choice (size_t) ;
 size_t choice_count ;
 TYPE_1__* choices ;
 scalar_t__ has_gvim ;
 int * searchpath (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static void
init_popup_choice(void)
{
    struct stat st;

    if (has_gvim
     && (stat("gvimext.dll", &st) >= 0
  || stat("gvimext/gvimext.dll", &st) >= 0)

     && searchpath("regedit.exe") != ((void*)0)

       )
    {
 choices[choice_count].changefunc = change_popup_choice;
 choices[choice_count].installfunc = ((void*)0);
 choices[choice_count].active = 1;
 change_popup_choice(choice_count);
 ++choice_count;
    }
    else
 add_dummy_choice();
}
