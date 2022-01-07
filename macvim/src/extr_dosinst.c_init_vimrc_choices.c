
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int * installfunc; int (* changefunc ) (size_t) ;int * text; } ;


 scalar_t__ NUL ;
 int alloc_text (size_t,int ,int ) ;
 int change_mouse_choice (size_t) ;
 int change_remap_choice (size_t) ;
 int change_run_choice (size_t) ;
 int change_vimrc_choice (size_t) ;
 size_t choice_count ;
 TYPE_1__* choices ;
 size_t compat_choice ;
 int * compat_choices ;
 int compat_text ;
 int * install_vimrc ;
 char* installdir ;
 size_t mouse_choice ;
 int * mouse_choices ;
 int mouse_text ;
 scalar_t__* oldvimrc ;
 size_t remap_choice ;
 int * remap_choices ;
 int remap_text ;
 scalar_t__ runtimeidx ;
 int strcpy (scalar_t__,char*) ;
 scalar_t__ vimrc ;

__attribute__((used)) static void
init_vimrc_choices(void)
{

    strcpy(vimrc, installdir);
    strcpy(vimrc + runtimeidx, "_vimrc");


    if (*oldvimrc == NUL)
 choices[choice_count].installfunc = ((void*)0);
    else
 choices[choice_count].installfunc = install_vimrc;
    choices[choice_count].text = ((void*)0);
    change_vimrc_choice(choice_count);
    choices[choice_count].changefunc = change_vimrc_choice;
    choices[choice_count].active = 1;
    ++choice_count;


    alloc_text(choice_count, compat_text, compat_choices[compat_choice]);
    choices[choice_count].changefunc = change_run_choice;
    choices[choice_count].installfunc = ((void*)0);
    choices[choice_count].active = (*oldvimrc == NUL);
    ++choice_count;


    alloc_text(choice_count, remap_text , remap_choices[remap_choice]);
    choices[choice_count].changefunc = change_remap_choice;
    choices[choice_count].installfunc = ((void*)0);;
    choices[choice_count].active = (*oldvimrc == NUL);
    ++choice_count;


    alloc_text(choice_count, mouse_text, mouse_choices[mouse_choice]);
    choices[choice_count].changefunc = change_mouse_choice;
    choices[choice_count].installfunc = ((void*)0);;
    choices[choice_count].active = (*oldvimrc == NUL);
    ++choice_count;
}
