
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int STRLEN (int*) ;
 int* alloc (int) ;
 int mch_memmove (int*,int*,int) ;

char_u *
C2Pascal_save(char_u *Cstring)
{
    char_u *PascalString;
    int len;

    if (Cstring == ((void*)0))
 return ((void*)0);

    len = STRLEN(Cstring);

    if (len > 255)
 len = 255;

    PascalString = alloc(len + 1);
    if (PascalString != ((void*)0))
    {
 mch_memmove(PascalString + 1, Cstring, len);
 PascalString[0] = len;
    }

    return PascalString;
}
