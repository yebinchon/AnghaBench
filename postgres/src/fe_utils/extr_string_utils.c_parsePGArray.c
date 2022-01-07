
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int strlen (char const*) ;

bool
parsePGArray(const char *atext, char ***itemarray, int *nitems)
{
 int inputlen;
 char **items;
 char *strings;
 int curitem;
 *itemarray = ((void*)0);
 *nitems = 0;
 inputlen = strlen(atext);
 if (inputlen < 2 || atext[0] != '{' || atext[inputlen - 1] != '}')
  return 0;
 items = (char **) malloc(inputlen * (sizeof(char *) + sizeof(char)));
 if (items == ((void*)0))
  return 0;
 *itemarray = items;
 strings = (char *) (items + inputlen);

 atext++;
 curitem = 0;
 while (*atext != '}')
 {
  if (*atext == '\0')
   return 0;
  items[curitem] = strings;
  while (*atext != '}' && *atext != ',')
  {
   if (*atext == '\0')
    return 0;
   if (*atext != '"')
    *strings++ = *atext++;
   else
   {

    atext++;
    while (*atext != '"')
    {
     if (*atext == '\0')
      return 0;
     if (*atext == '\\')
     {
      atext++;
      if (*atext == '\0')
       return 0;
     }
     *strings++ = *atext++;
    }
    atext++;
   }
  }
  *strings++ = '\0';
  if (*atext == ',')
   atext++;
  curitem++;
 }
 if (atext[1] != '\0')
  return 0;
 *nitems = curitem;
 return 1;
}
