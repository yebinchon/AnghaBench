
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static void
print_with_linenumbers(FILE *output, char *lines,
        const char *header_keyword)
{
 bool in_header = (header_keyword != ((void*)0));
 size_t header_sz = in_header ? strlen(header_keyword) : 0;
 int lineno = 0;

 while (*lines != '\0')
 {
  char *eol;

  if (in_header && strncmp(lines, header_keyword, header_sz) == 0)
   in_header = 0;


  if (!in_header)
   lineno++;


  eol = strchr(lines, '\n');
  if (eol != ((void*)0))
   *eol = '\0';


  if (in_header)
   fprintf(output, "        %s\n", lines);
  else
   fprintf(output, "%-7d %s\n", lineno, lines);


  if (eol == ((void*)0))
   break;
  lines = ++eol;
 }
}
