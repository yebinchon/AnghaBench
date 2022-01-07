
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char* CONVERT_TO_UTF8 (char*) ;
 int CONVERT_TO_UTF8_FREE (char*) ;
 char NUL ;
 char TAB ;
 char* alloc (unsigned int) ;

__attribute__((used)) static char_u *
translate_mnemonic_tag(char_u *name, int use_mnemonic)
{
    char_u *buf;
    char_u *psrc;
    char_u *pdest;
    int n_underscores = 0;

    name = CONVERT_TO_UTF8(name);
    if (name == ((void*)0))
 return ((void*)0);

    for (psrc = name; *psrc != NUL && *psrc != TAB; ++psrc)
 if (*psrc == '_')
     ++n_underscores;

    buf = alloc((unsigned)(psrc - name + n_underscores + 1));
    if (buf != ((void*)0))
    {
 pdest = buf;
 for (psrc = name; *psrc != NUL && *psrc != TAB; ++psrc)
 {
     if (*psrc == '_')
     {
  *pdest++ = '_';
  *pdest++ = '_';
     }
     else if (*psrc != '&')
     {
  *pdest++ = *psrc;
     }
     else if (*(psrc + 1) == '&')
     {
  *pdest++ = *psrc++;
     }
     else if (use_mnemonic)
     {
  *pdest++ = '_';
     }
 }
 *pdest = NUL;
    }

    CONVERT_TO_UTF8_FREE(name);
    return buf;
}
