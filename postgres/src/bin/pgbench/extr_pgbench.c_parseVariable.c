
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (char const) ;
 int memcpy (char*,char const*,int) ;
 char* pg_malloc (int) ;
 int * strchr (char*,char const) ;

__attribute__((used)) static char *
parseVariable(const char *sql, int *eaten)
{
 int i = 0;
 char *name;

 do
 {
  i++;
 } while (IS_HIGHBIT_SET(sql[i]) ||
    strchr("ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz"
     "_0123456789", sql[i]) != ((void*)0));
 if (i == 1)
  return ((void*)0);

 name = pg_malloc(i);
 memcpy(name, &sql[1], i - 1);
 name[i - 1] = '\0';

 *eaten = i;
 return name;
}
