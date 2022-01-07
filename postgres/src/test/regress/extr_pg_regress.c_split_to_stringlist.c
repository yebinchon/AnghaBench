
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _stringlist ;


 int add_stringlist_item (int **,char*) ;
 int free (char*) ;
 char* pg_strdup (char const*) ;
 char* strtok (char*,char const*) ;

__attribute__((used)) static void
split_to_stringlist(const char *s, const char *delim, _stringlist **listhead)
{
 char *sc = pg_strdup(s);
 char *token = strtok(sc, delim);

 while (token)
 {
  add_stringlist_item(listhead, token);
  token = strtok(((void*)0), delim);
 }
 free(sc);
}
