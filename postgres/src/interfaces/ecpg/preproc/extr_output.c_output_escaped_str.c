
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_yyout ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
output_escaped_str(char *str, bool quoted)
{
 int i = 0;
 int len = strlen(str);

 if (quoted && str[0] == '"' && str[len - 1] == '"')


 {
  i = 1;
  len--;
  fputs("\"", base_yyout);
 }


 for (; i < len; i++)
 {
  if (str[i] == '"')
   fputs("\\\"", base_yyout);
  else if (str[i] == '\n')
   fputs("\\\n", base_yyout);
  else if (str[i] == '\\')
  {
   int j = i;







   do
   {
    j++;
   } while (str[j] == ' ' || str[j] == '\t');

   if ((str[j] != '\n') && (str[j] != '\r' || str[j + 1] != '\n'))

    fputs("\\\\", base_yyout);
  }
  else if (str[i] == '\r' && str[i + 1] == '\n')
  {
   fputs("\\\r\n", base_yyout);
   i++;
  }
  else
   fputc(str[i], base_yyout);
 }

 if (quoted && str[0] == '"' && str[len] == '"')
  fputs("\"", base_yyout);
}
