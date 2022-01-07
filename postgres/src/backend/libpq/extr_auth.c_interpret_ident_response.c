
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int response_type ;


 int IDENT_USERNAME_MAX ;
 scalar_t__ pg_isblank (char const) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
interpret_ident_response(const char *ident_response,
       char *ident_user)
{
 const char *cursor = ident_response;




 if (strlen(ident_response) < 2)
  return 0;
 else if (ident_response[strlen(ident_response) - 2] != '\r')
  return 0;
 else
 {
  while (*cursor != ':' && *cursor != '\r')
   cursor++;

  if (*cursor != ':')
   return 0;
  else
  {

   char response_type[80];
   int i;

   cursor++;
   while (pg_isblank(*cursor))
    cursor++;
   i = 0;
   while (*cursor != ':' && *cursor != '\r' && !pg_isblank(*cursor) &&
       i < (int) (sizeof(response_type) - 1))
    response_type[i++] = *cursor++;
   response_type[i] = '\0';
   while (pg_isblank(*cursor))
    cursor++;
   if (strcmp(response_type, "USERID") != 0)
    return 0;
   else
   {




    if (*cursor != ':')
     return 0;
    else
    {
     cursor++;

     while (*cursor != ':' && *cursor != '\r')
      cursor++;
     if (*cursor != ':')
      return 0;
     else
     {
      int i;

      cursor++;
      while (pg_isblank(*cursor))
       cursor++;

      i = 0;
      while (*cursor != '\r' && i < IDENT_USERNAME_MAX)
       ident_user[i++] = *cursor++;
      ident_user[i] = '\0';
      return 1;
     }
    }
   }
  }
 }
}
