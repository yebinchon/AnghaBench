
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 scalar_t__ pg_malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static char **
replace_token(char **lines, const char *token, const char *replacement)
{
 int numlines = 1;
 int i;
 char **result;
 int toklen,
    replen,
    diff;

 for (i = 0; lines[i]; i++)
  numlines++;

 result = (char **) pg_malloc(numlines * sizeof(char *));

 toklen = strlen(token);
 replen = strlen(replacement);
 diff = replen - toklen;

 for (i = 0; i < numlines; i++)
 {
  char *where;
  char *newline;
  int pre;


  if (lines[i] == ((void*)0) || (where = strstr(lines[i], token)) == ((void*)0))
  {
   result[i] = lines[i];
   continue;
  }



  newline = (char *) pg_malloc(strlen(lines[i]) + diff + 1);

  pre = where - lines[i];

  memcpy(newline, lines[i], pre);

  memcpy(newline + pre, replacement, replen);

  strcpy(newline + pre + replen, lines[i] + pre + toklen);

  result[i] = newline;
 }

 return result;
}
