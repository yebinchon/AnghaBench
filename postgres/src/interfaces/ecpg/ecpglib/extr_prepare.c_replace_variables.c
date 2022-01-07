
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;
 scalar_t__ ecpg_alloc (int,int) ;
 int ecpg_free (char*) ;
 scalar_t__ isvarchar (char) ;
 int memcpy (char*,char*,int) ;
 int snprintf (char*,int,char*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool
replace_variables(char **text, int lineno)
{
 bool string = 0;
 int counter = 1,
    ptr = 0;

 for (; (*text)[ptr] != '\0'; ptr++)
 {
  if ((*text)[ptr] == '\'')
   string = string ? 0 : 1;

  if (string || (((*text)[ptr] != ':') && ((*text)[ptr] != '?')))
   continue;

  if (((*text)[ptr] == ':') && ((*text)[ptr + 1] == ':'))
   ptr += 2;
  else
  {

   int buffersize = sizeof(int) * CHAR_BIT * 10 / 3;
   int len;
   char *buffer,
        *newcopy;

   if (!(buffer = (char *) ecpg_alloc(buffersize, lineno)))
    return 0;

   snprintf(buffer, buffersize, "$%d", counter++);

   for (len = 1; (*text)[ptr + len] && isvarchar((*text)[ptr + len]); len++)
                ;
   if (!(newcopy = (char *) ecpg_alloc(strlen(*text) -len + strlen(buffer) + 1, lineno)))
   {
    ecpg_free(buffer);
    return 0;
   }

   memcpy(newcopy, *text, ptr);
   strcpy(newcopy + ptr, buffer);
   strcat(newcopy, (*text) +ptr + len);

   ecpg_free(*text);
   ecpg_free(buffer);

   *text = newcopy;

   if ((*text)[ptr] == '\0')
    ptr--;

  }
 }
 return 1;
}
