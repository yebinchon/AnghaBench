
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;

void blkfree(char **av0)
{
    register char **av = av0;

    while (*av)
        free(*av++);
}
