
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int Oid ;


 int InvalidOid ;
 int atooid (char*) ;
 int exit_nicely (int) ;
 scalar_t__ isdigit (unsigned char) ;
 int pg_log_error (char*,char const*) ;

void
parseOidArray(const char *str, Oid *array, int arraysize)
{
 int j,
    argNum;
 char temp[100];
 char s;

 argNum = 0;
 j = 0;
 for (;;)
 {
  s = *str++;
  if (s == ' ' || s == '\0')
  {
   if (j > 0)
   {
    if (argNum >= arraysize)
    {
     pg_log_error("could not parse numeric array \"%s\": too many numbers", str);
     exit_nicely(1);
    }
    temp[j] = '\0';
    array[argNum++] = atooid(temp);
    j = 0;
   }
   if (s == '\0')
    break;
  }
  else
  {
   if (!(isdigit((unsigned char) s) || s == '-') ||
    j >= sizeof(temp) - 1)
   {
    pg_log_error("could not parse numeric array \"%s\": invalid character in number", str);
    exit_nicely(1);
   }
   temp[j++] = s;
  }
 }

 while (argNum < arraysize)
  array[argNum++] = InvalidOid;
}
