
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_VALID_BE_ENCODING (int) ;
 int pg_char_to_encoding (char const*) ;

int
pg_valid_server_encoding(const char *name)
{
 int enc;

 if ((enc = pg_char_to_encoding(name)) < 0)
  return -1;

 if (!PG_VALID_BE_ENCODING(enc))
  return -1;

 return enc;
}
