
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ calloc (size_t,int) ;
 int die (char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,size_t,int,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;

__attribute__((used)) static char*
file_load(const char* path, size_t* siz)
{
    char *buf;
    FILE *fd = fopen(path, "rb");
    if (!fd) die("Failed to open file: %s\n", path);
    fseek(fd, 0, SEEK_END);
    *siz = (size_t)ftell(fd);
    fseek(fd, 0, SEEK_SET);
    buf = (char*)calloc(*siz, 1);
    fread(buf, *siz, 1, fd);
    fclose(fd);
    return buf;
}
