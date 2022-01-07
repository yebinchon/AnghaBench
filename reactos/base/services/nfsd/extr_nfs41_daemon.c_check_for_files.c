
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int FILE ;


 int ARRAYSIZE (char*) ;
 int FALSE ;
 char* FILE_NETCONFIG ;
 scalar_t__ GetSystemDirectoryA (char*,int ) ;
 int MAX_PATH ;
 int StringCchCatA (char*,int ,char*) ;
 int StringCchCopyA (char*,int ,char*) ;
 int TRUE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static bool_t check_for_files()
{
    FILE *fd;
    fd = fopen(FILE_NETCONFIG, "r");

    if (fd == ((void*)0)) {



        fprintf(stderr,"nfsd() failed to open file '%s'\n", FILE_NETCONFIG);

        return FALSE;
    }
    fclose(fd);
    return TRUE;
}
