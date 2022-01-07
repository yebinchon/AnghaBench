
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
find_end_token(char *str, char *fmt)
{
 char *end_position = ((void*)0);
 char *next_percent,
      *subst_location = ((void*)0);
 int scan_offset = 0;
 char last_char;


 if (!*fmt)
 {
  end_position = fmt;
  return end_position;
 }


 while (fmt[scan_offset] == '%' && fmt[scan_offset + 1])
 {






  scan_offset += 2;
 }
 next_percent = strchr(fmt + scan_offset, '%');
 if (next_percent)
 {







  subst_location = next_percent;
  while (*(subst_location - 1) == ' ' && subst_location - 1 > fmt + scan_offset)
   subst_location--;
  last_char = *subst_location;
  *subst_location = '\0';
  while (*str == ' ')
   str++;
  end_position = strstr(str, fmt + scan_offset);
  *subst_location = last_char;
 }
 else
 {




  end_position = str + strlen(str);
 }
 if (!end_position)
 {
  if ((fmt + scan_offset)[0] == ' ' && fmt + scan_offset + 1 == subst_location)
   end_position = str + strlen(str);
 }
 return end_position;
}
