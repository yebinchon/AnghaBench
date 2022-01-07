
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VOID ;



VOID NarrowToWide(WCHAR *wide_name, char *name)
{
    char *copy_name;
    WCHAR *wide_name_ptr;
    for (wide_name_ptr = wide_name, copy_name = name;
         (*wide_name_ptr = *copy_name);
         wide_name_ptr++, copy_name++);
}
