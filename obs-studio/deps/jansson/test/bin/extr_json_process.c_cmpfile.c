
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ strip; } ;
typedef int FILE ;


 TYPE_1__ conf ;
 char* dir_sep ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* loadfile (int *) ;
 int printf (char*) ;
 int sprintf (char*,char*,char const*,char*,char const*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int cmpfile(const char *str, const char *path, const char *fname)
{
    char filename[1024], *buffer;
    int ret;
    FILE *file;

    sprintf(filename, "%s%c%s", path, dir_sep, fname);
    file = fopen(filename, "rb");
    if (!file) {
        if (conf.strip)
            strcat(filename, ".strip");
        else
            strcat(filename, ".normal");
        file = fopen(filename, "rb");
    }
    if (!file) {
        printf("Error: test result file could not be opened.\n");
        exit(1);
    }

    buffer = loadfile(file);
    if (strcmp(buffer, str) != 0)
        ret = 1;
    else
        ret = 0;
    free(buffer);
    fclose(file);

    return ret;
}
