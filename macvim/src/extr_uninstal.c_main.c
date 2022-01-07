
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int BUFSIZE ;
 scalar_t__ FALSE ;
 int ICON_COUNT ;
 scalar_t__ TRUE ;
 char* VIM_STARTMENU ;
 scalar_t__ confirm () ;
 int delete_uninstall_key () ;
 int do_inits (char**) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ get_shell_folder_path (char*,char*) ;
 int getchar () ;
 char** icon_link_names ;
 char** icon_names ;
 scalar_t__ interactive ;
 scalar_t__ openwith_gvim_path (char*) ;
 scalar_t__ popup_gvim_path (char*) ;
 int printf (char*,...) ;
 int remove_batfiles (int) ;
 int remove_icons () ;
 int remove_openwith () ;
 int remove_popup () ;
 int remove_start_menu () ;
 int rewind (int ) ;
 int sleep (int) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdin ;
 scalar_t__ stricmp (char*,char*) ;
 int system (char*) ;

int
main(int argc, char *argv[])
{
    int found = 0;
    FILE *fd;
 interactive = TRUE;


    do_inits(argv);

    printf("This program will remove the following items:\n");
    printf("\n");
    found = remove_batfiles(0);
    if (found > 0)
    {
 if (interactive)
     printf("\nRemove %s (y/n)? ", found > 1 ? "them" : "it");
 if (!interactive || confirm())
     remove_batfiles(1);
    }

    fd = fopen("gvim.exe", "r");
    if (fd != ((void*)0))
    {
 fclose(fd);
 printf("gvim.exe detected.  Attempting to unregister gvim with OLE\n");
 system("gvim.exe -silent -unregister");
    }

    delete_uninstall_key();

    if (interactive)
    {
 printf("\nYou may now want to delete the Vim executables and runtime files.\n");
 printf("(They are still where you unpacked them.)\n");
    }

    if (interactive)
    {
 rewind(stdin);
 printf("\nPress Enter to exit...");
 (void)getchar();
    }
    else
 sleep(3);

    return 0;
}
