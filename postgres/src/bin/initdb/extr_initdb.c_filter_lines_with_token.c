
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_malloc (int) ;
 int * strstr (char*,char const*) ;

__attribute__((used)) static char **
filter_lines_with_token(char **lines, const char *token)
{
 int numlines = 1;
 int i,
    src,
    dst;
 char **result;

 for (i = 0; lines[i]; i++)
  numlines++;

 result = (char **) pg_malloc(numlines * sizeof(char *));

 for (src = 0, dst = 0; src < numlines; src++)
 {
  if (lines[src] == ((void*)0) || strstr(lines[src], token) == ((void*)0))
   result[dst++] = lines[src];
 }

 return result;
}
