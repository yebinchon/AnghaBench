
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* exenamearg; char* name; } ;


 int TARGET_COUNT ;
 int * getenv (char*) ;
 scalar_t__ has_gvim ;
 scalar_t__ has_vim ;
 int init_bat_choice (int) ;
 int init_directories_choice () ;
 int init_openwith_choice () ;
 int init_popup_choice () ;
 int init_shortcut_choices () ;
 int init_startmenu_choice () ;
 int init_vimrc_choices () ;
 int print_cmd_line_help () ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__* targets ;
 int vimfiles_dir_choice ;
 scalar_t__ vimfiles_dir_home ;
 scalar_t__ vimfiles_dir_vim ;

__attribute__((used)) static void
command_line_setup_choices(int argc, char **argv)
{
    int i, j;

    for (i = 1; i < argc; i++)
    {
 if (strcmp(argv[i], "-create-batfiles") == 0)
 {
     if (i + 1 == argc)
  continue;
     while (argv[i + 1][0] != '-' && i < argc)
     {
  i++;
  for (j = 1; j < TARGET_COUNT; ++j)
      if ((targets[j].exenamearg[0] == 'g' ? has_gvim : has_vim)
       && strcmp(argv[i], targets[j].name) == 0)
      {
   init_bat_choice(j);
   break;
      }
  if (j == TARGET_COUNT)
      printf("%s is not a valid choice for -create-batfiles\n",
             argv[i]);

  if (i + 1 == argc)
      break;
     }
 }
 else if (strcmp(argv[i], "-create-vimrc") == 0)
 {



     init_vimrc_choices();
 }
 else if (strcmp(argv[i], "-install-popup") == 0)
 {
     init_popup_choice();
 }
 else if (strcmp(argv[i], "-install-openwith") == 0)
 {
     init_openwith_choice();
 }
 else if (strcmp(argv[i], "-add-start-menu") == 0)
 {
     init_startmenu_choice();
 }
 else if (strcmp(argv[i], "-install-icons") == 0)
 {
     init_shortcut_choices();
 }
 else if (strcmp(argv[i], "-create-directories") == 0)
 {
     init_directories_choice();
     if (argv[i + 1][0] != '-')
     {
  i++;
  if (strcmp(argv[i], "vim") == 0)
      vimfiles_dir_choice = (int)vimfiles_dir_vim;
  else if (strcmp(argv[i], "home") == 0)
  {
      if (getenv("HOME") == ((void*)0))
   vimfiles_dir_choice = (int)vimfiles_dir_vim;
      else
   vimfiles_dir_choice = (int)vimfiles_dir_home;
  }
  else
  {
      printf("Unknown argument for -create-directories: %s\n",
             argv[i]);
      print_cmd_line_help();
  }
     }
     else
  vimfiles_dir_choice = (int)vimfiles_dir_vim;
 }






 else
 {
     printf("Got unknown argument argv[%d] = %s\n", i, argv[i]);
     print_cmd_line_help();
 }
    }
}
