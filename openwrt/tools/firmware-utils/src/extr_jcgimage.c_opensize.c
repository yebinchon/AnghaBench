
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int O_RDONLY ;
 int err (int,char*,char*) ;
 int fstat (int,struct stat*) ;
 int open (char*,int ) ;

int
opensize(char *name, size_t *size)
{
 struct stat s;
 int fd = open(name, O_RDONLY);
 if (fd < 0)
  err(1, "cannot open \"%s\"", name);

 if (fstat(fd, &s) == -1)
  err(1, "cannot stat \"%s\"", name);

 *size = s.st_size;
 return fd;
}
