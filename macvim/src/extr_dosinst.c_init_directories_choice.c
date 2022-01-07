
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {int active; int installfunc; int changefunc; int text; } ;


 int BUFSIZE ;
 int alloc (int) ;
 int change_directories_choice ;
 size_t choice_count ;
 TYPE_1__* choices ;
 int dir_remove_last (int ,char*) ;
 char* getenv (char*) ;
 int install_vimfilesdir ;
 int installdir ;
 int set_directories_text (size_t) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int vimfiles_dir_choice ;
 scalar_t__ vimfiles_dir_home ;
 scalar_t__ vimfiles_dir_none ;
 scalar_t__ vimfiles_dir_vim ;

__attribute__((used)) static void
init_directories_choice(void)
{
    struct stat st;
    char tmp_dirname[BUFSIZE];
    char *p;

    choices[choice_count].text = alloc(150);
    choices[choice_count].changefunc = change_directories_choice;
    choices[choice_count].installfunc = install_vimfilesdir;
    choices[choice_count].active = 1;



    if (getenv("HOME") != ((void*)0))
    {
 vimfiles_dir_choice = (int)vimfiles_dir_home;
 sprintf(tmp_dirname, "%s\\vimfiles\\compiler", getenv("HOME"));
 if (stat(tmp_dirname, &st) == 0)
     vimfiles_dir_choice = (int)vimfiles_dir_none;
    }
    else
    {
 vimfiles_dir_choice = (int)vimfiles_dir_vim;
 p = getenv("VIM");
 if (p == ((void*)0))
     dir_remove_last(installdir, tmp_dirname);
 else
     strcpy(tmp_dirname, p);
 strcat(tmp_dirname, "\\vimfiles\\compiler");
 if (stat(tmp_dirname, &st) == 0)
     vimfiles_dir_choice = (int)vimfiles_dir_none;
    }

    set_directories_text(choice_count);
    ++choice_count;
}
