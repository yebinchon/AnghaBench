
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((weak))
int _lseek(int fd, long long offset, int whence)
{
 return -1;
}
