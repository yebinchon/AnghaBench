
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_SQL_ASCII ;

int
pg_get_encoding_from_locale(const char *ctype, bool write_message)
{
 return PG_SQL_ASCII;
}
