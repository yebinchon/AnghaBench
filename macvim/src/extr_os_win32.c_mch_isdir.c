
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int win32_getattrs (int *) ;

int
mch_isdir(char_u *name)
{
    int f = win32_getattrs(name);

    if (f == -1)
 return FALSE;

    return (f & FILE_ATTRIBUTE_DIRECTORY) != 0;
}
