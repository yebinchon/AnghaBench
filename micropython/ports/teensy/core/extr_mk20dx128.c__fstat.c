
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFCHR ;

__attribute__((weak))
int _fstat(int fd, struct stat *st)
{
 st->st_mode = S_IFCHR;
 return 0;
}
