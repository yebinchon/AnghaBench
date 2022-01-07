
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalpha (unsigned char) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int
next_insert(char *text, int pos, bool questionmarks, bool std_strings)
{
 bool string = 0;
 int p = pos;

 for (; text[p] != '\0'; p++)
 {
  if (string && !std_strings && text[p] == '\\')
   p++;
  else if (text[p] == '\'')
   string = string ? 0 : 1;
  else if (!string)
  {
   if (text[p] == '$' && isdigit((unsigned char) text[p + 1]))
   {

    int i;

    for (i = p + 1; isdigit((unsigned char) text[i]); i++)
                            ;
    if (!isalpha((unsigned char) text[i]) &&
     isascii((unsigned char) text[i]) &&text[i] != '_')

     return p;
   }
   else if (questionmarks && text[p] == '?')
   {

    return p;
   }
  }
 }

 return -1;
}
