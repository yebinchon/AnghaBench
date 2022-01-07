
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int free (char*) ;
 int sdb_query (int *,char*) ;
 char* stdin_gets () ;

__attribute__((used)) static void __sdb_prompt(Sdb *sdb) {
 char *line;
 for (; (line = stdin_gets ());) {
  sdb_query (sdb, line);
  free (line);
 }
}
