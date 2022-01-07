
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NORM ;
 char* pstrdup (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
addToResult(char **forms, char **cur, char *word)
{
 if (cur - forms >= MAX_NORM - 1)
  return 0;
 if (forms == cur || strcmp(word, *(cur - 1)) != 0)
 {
  *cur = pstrdup(word);
  *(cur + 1) = ((void*)0);
  return 1;
 }

 return 0;
}
