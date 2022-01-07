
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;
 char* EMPTY ;
 int base_yydebug ;
 int base_yylineno ;
 char* input_filename ;
 char* mm_alloc (int) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

char *
hashline_number(void)
{

 if (input_filename



  )
 {

  char *line = mm_alloc(strlen("\n#line %d \"%s\"\n") + sizeof(int) * CHAR_BIT * 10 / 3 + strlen(input_filename) * 2);
  char *src,
       *dest;

  sprintf(line, "\n#line %d \"", base_yylineno);
  src = input_filename;
  dest = line + strlen(line);
  while (*src)
  {
   if (*src == '\\' || *src == '"')
    *dest++ = '\\';
   *dest++ = *src++;
  }
  *dest = '\0';
  strcat(dest, "\"\n");

  return line;
 }

 return EMPTY;
}
