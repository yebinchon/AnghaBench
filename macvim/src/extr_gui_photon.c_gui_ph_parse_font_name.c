
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_u ;
typedef scalar_t__ char_u ;


 int FALSE ;
 scalar_t__ NUL ;
 int PF_STYLE_ANTIALIAS ;
 int PF_STYLE_BOLD ;
 int PF_STYLE_ITALIC ;
 int STRLEN (scalar_t__*) ;
 int TRUE ;
 int getdigits (scalar_t__**) ;
 int tolower (int ) ;
 scalar_t__* vim_strchr (scalar_t__*,char) ;
 scalar_t__* vim_strnsave (scalar_t__*,int) ;

__attribute__((used)) static int
gui_ph_parse_font_name(
 char_u *vim_font,
 char_u **font_name,
 int_u *font_flags,
 int_u *font_size)
{
    char_u *mark;
    int_u name_len, size;

    mark = vim_strchr(vim_font, ':');
    if (mark == ((void*)0))
 name_len = STRLEN(vim_font);
    else
 name_len = (int_u) (mark - vim_font);

    *font_name = vim_strnsave(vim_font, name_len);
    if (*font_name != ((void*)0))
    {
 if (mark != ((void*)0))
 {
     while (*mark != NUL && *mark++ == ':')
     {
  switch (tolower(*mark++))
  {
      case 'a': *font_flags |= PF_STYLE_ANTIALIAS; break;
      case 'b': *font_flags |= PF_STYLE_BOLD; break;
      case 'i': *font_flags |= PF_STYLE_ITALIC; break;

      case 's':
   size = getdigits(&mark);

   if (size < 1 || size > 100)
       size = 8;

   *font_size = size;
   break;

      default:
   break;
  }
     }
 }
 return TRUE;
    }
    return FALSE;
}
