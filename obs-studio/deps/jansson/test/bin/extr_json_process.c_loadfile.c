
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int exit (int) ;
 long fread (char*,int,long,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* malloc (long) ;

__attribute__((used)) static char *loadfile(FILE *file)
{
    long fsize, ret;
    char *buf;

    fseek(file, 0, SEEK_END);
    fsize = ftell(file);
    fseek(file, 0, SEEK_SET);

    buf = malloc(fsize+1);
    ret = fread(buf, 1, fsize, file);
    if (ret != fsize)
        exit(1);
    buf[fsize] = '\0';

    return buf;
}
