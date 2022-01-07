
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir (char*) ;
 int getcwd (char*,int) ;
 scalar_t__ mkdir (char*,...) ;
 int perror (char*) ;

int MakeDirectory(char *Directory)
{
    char CurrentDirectory[1024];

    getcwd(CurrentDirectory, 1024);

    if (chdir(Directory) == 0)
    {
        chdir(CurrentDirectory);
        return 0;
    }
    if (mkdir(Directory) != 0)
    {
        perror("Failed to create directory");
        return 1;
    }


    if (chdir(Directory) != 0)
    {
        perror("Failed to change directory");
        return 1;
    }

    chdir(CurrentDirectory);

    return 0;
}
