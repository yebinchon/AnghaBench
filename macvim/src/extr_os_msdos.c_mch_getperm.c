
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ vim_chmod (int *) ;

long
mch_getperm(char_u *name)
{
    return (long)vim_chmod(name);
}
