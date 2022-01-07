
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int BUFSIZE ;
 char* VIM_VERSION_NODOT ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int has_gvim ;
 int has_vim ;
 char* installdir ;
 int myexit (int) ;
 int printf (char*,...) ;
 int runtimeidx ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ stricmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
check_unpack(void)
{
    char buf[BUFSIZE];
    FILE *fd;
    struct stat st;


    runtimeidx = strlen(installdir) - strlen(VIM_VERSION_NODOT);
    if (runtimeidx <= 0
     || stricmp(installdir + runtimeidx, VIM_VERSION_NODOT) != 0
     || (installdir[runtimeidx - 1] != '/'
  && installdir[runtimeidx - 1] != '\\'))
    {
 printf("ERROR: Install program not in directory \"%s\"\n",
  VIM_VERSION_NODOT);
 printf("This program can only work when it is located in its original directory\n");
 myexit(1);
    }



    sprintf(buf, "%s\\filetype.vim", installdir);
    if (stat(buf, &st) < 0)
    {
 printf("ERROR: Cannot find filetype.vim in \"%s\"\n", installdir);
 printf("It looks like you did not unpack the runtime archive.\n");
 printf("You must unpack the runtime archive \"vim%srt.zip\" before installing.\n",
  VIM_VERSION_NODOT + 3);
 myexit(1);
    }


    if ((fd = fopen("gvim.exe", "r")) != ((void*)0))
    {
 fclose(fd);
 has_gvim = 1;
    }
    if ((fd = fopen("vim.exe", "r")) != ((void*)0))
    {
 fclose(fd);
 has_vim = 1;
    }
    if (!has_gvim && !has_vim)
    {
 printf("ERROR: Cannot find any Vim executables in \"%s\"\n\n",
          installdir);
 myexit(1);
    }
}
