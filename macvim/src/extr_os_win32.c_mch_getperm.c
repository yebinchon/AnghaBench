
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;
typedef int char_u ;


 int mch_stat (int *,struct stat*) ;

long
mch_getperm(char_u *name)
{
    struct stat st;
    int n;

    n = mch_stat(name, &st);
    return n == 0 ? (long)(unsigned short)st.st_mode : -1L;
}
