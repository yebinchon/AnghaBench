
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZE ;
 scalar_t__ NUL ;
 scalar_t__* getenv (char*) ;
 int installdir ;
 int mch_chdir (int ) ;
 int * my_fullpath (int ,char*,int ) ;
 int myexit (int) ;
 int printf (char*) ;
 int putenv (char*) ;
 int remove_tail (int ) ;
 scalar_t__* sysdrive ;

__attribute__((used)) static void
do_inits(char **argv)
{
    if (my_fullpath(installdir, argv[0], BUFSIZE) == ((void*)0))
    {
 printf("ERROR: Cannot get name of executable\n");
 myexit(1);
    }

    remove_tail(installdir);


    mch_chdir(installdir);



    sysdrive = getenv("SYSTEMDRIVE");
    if (sysdrive == ((void*)0) || *sysdrive == NUL)
 sysdrive = "C:\\";
}
