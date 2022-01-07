
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t arg; } ;
struct TYPE_3__ {char* batpath; char* oldbat; char* exenamearg; char* exearg; } ;
typedef int FILE ;


 char NUL ;
 char* VIM_VERSION_NODOT ;
 TYPE_2__* choices ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 char* installdir ;
 int need_uninstall_entry ;
 int printf (char*,char*,...) ;
 TYPE_1__* targets ;

__attribute__((used)) static void
install_bat_choice(int idx)
{
    char *batpath = targets[choices[idx].arg].batpath;
    char *oldname = targets[choices[idx].arg].oldbat;
    char *exename = targets[choices[idx].arg].exenamearg;
    char *vimarg = targets[choices[idx].arg].exearg;
    FILE *fd;

    if (*batpath != NUL)
    {
 fd = fopen(batpath, "w");
 if (fd == ((void*)0))
     printf("\nERROR: Cannot open \"%s\" for writing.\n", batpath);
 else
 {
     need_uninstall_entry = 1;

     fprintf(fd, "@echo off\n");
     fprintf(fd, "rem -- Run Vim --\n");
     fprintf(fd, "\n");
     fprintf(fd, "set VIM_EXE_DIR=%s\n", installdir);
     fprintf(fd, "if exist \"%%VIM%%\\%s\\%s\" set VIM_EXE_DIR=%%VIM%%\\%s\n",
          VIM_VERSION_NODOT, exename, VIM_VERSION_NODOT);
     fprintf(fd, "if exist \"%%VIMRUNTIME%%\\%s\" set VIM_EXE_DIR=%%VIMRUNTIME%%\n", exename);
     fprintf(fd, "\n");


     fprintf(fd, "if exist \"%%VIM_EXE_DIR%%\\%s\" goto havevim\n",
             exename);
     fprintf(fd, "echo \"%%VIM_EXE_DIR%%\\%s\" not found\n", exename);
     fprintf(fd, "goto eof\n");
     fprintf(fd, "\n");
     fprintf(fd, ":havevim\n");

     fprintf(fd, "rem collect the arguments in VIMARGS for Win95\n");
     fprintf(fd, "set VIMARGS=\n");
     if (*exename == 'g')
  fprintf(fd, "set VIMNOFORK=\n");
     fprintf(fd, ":loopstart\n");
     fprintf(fd, "if .%%1==. goto loopend\n");
     if (*exename == 'g')
     {
  fprintf(fd, "if NOT .%%1==.-f goto noforkarg\n");
  fprintf(fd, "set VIMNOFORK=1\n");
  fprintf(fd, ":noforkarg\n");
     }
     fprintf(fd, "set VIMARGS=%%VIMARGS%% %%1\n");
     fprintf(fd, "shift\n");
     fprintf(fd, "goto loopstart\n");
     fprintf(fd, ":loopend\n");
     fprintf(fd, "\n");

     fprintf(fd, "if .%%OS%%==.Windows_NT goto ntaction\n");
     fprintf(fd, "\n");



     if (*exename == 'g')
     {
  fprintf(fd, "if .%%VIMNOFORK%%==.1 goto nofork\n");
  fprintf(fd, "start ");
     }


     fprintf(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%VIMARGS%%\n",
            exename, vimarg);
     fprintf(fd, "goto eof\n");
     fprintf(fd, "\n");

     if (*exename == 'g')
     {
  fprintf(fd, ":nofork\n");
  fprintf(fd, "start /w ");

  fprintf(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%VIMARGS%%\n",
            exename, vimarg);
  fprintf(fd, "goto eof\n");
  fprintf(fd, "\n");
     }

     fprintf(fd, ":ntaction\n");
     fprintf(fd, "rem for WinNT we can use %%*\n");



     if (*exename == 'g')
     {
  fprintf(fd, "if .%%VIMNOFORK%%==.1 goto noforknt\n");
  fprintf(fd, "start \"dummy\" /b ");
     }


     fprintf(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%*\n", exename, vimarg);
     fprintf(fd, "goto eof\n");
     fprintf(fd, "\n");

     if (*exename == 'g')
     {
  fprintf(fd, ":noforknt\n");
  fprintf(fd, "start \"dummy\" /b /wait ");

  fprintf(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%*\n",
            exename, vimarg);
     }

     fprintf(fd, "\n:eof\n");
     fprintf(fd, "set VIMARGS=\n");
     if (*exename == 'g')
  fprintf(fd, "set VIMNOFORK=\n");

     fclose(fd);
     printf("%s has been %s\n", batpath,
     oldname == ((void*)0) ? "created" : "overwritten");
 }
    }
}
