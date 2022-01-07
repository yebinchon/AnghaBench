
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_READONLY ;
 int win32_getattrs (int *) ;

int
mch_writable(char_u *name)
{
    int attrs = win32_getattrs(name);

    return (attrs != -1 && (!(attrs & FILE_ATTRIBUTE_READONLY)
     || (attrs & FILE_ATTRIBUTE_DIRECTORY)));
}
