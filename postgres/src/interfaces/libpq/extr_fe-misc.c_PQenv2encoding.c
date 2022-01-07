
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_SQL_ASCII ;
 char* getenv (char*) ;
 int pg_char_to_encoding (char*) ;

int
PQenv2encoding(void)
{
 char *str;
 int encoding = PG_SQL_ASCII;

 str = getenv("PGCLIENTENCODING");
 if (str && *str != '\0')
 {
  encoding = pg_char_to_encoding(str);
  if (encoding < 0)
   encoding = PG_SQL_ASCII;
 }
 return encoding;
}
