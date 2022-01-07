
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int STRLEN (char*) ;
 char* alloc (int) ;

char_u *
C2Pascal_save_and_remove_backslash(char_u *Cstring)
{
    char_u *PascalString;
    int len;
    char_u *p, *c;

    len = STRLEN(Cstring);

    if (len > 255)
 len = 255;

    PascalString = alloc(len + 1);
    if (PascalString != ((void*)0))
    {
 for (c = Cstring, p = PascalString+1, len = 0; (*c != 0) && (len < 255); c++)
 {
     if ((*c == '\\') && (c[1] != 0))
     {
  c++;
     }
     *p = *c;
     p++;
     len++;
 }
 PascalString[0] = len;
    }

    return PascalString;
}
