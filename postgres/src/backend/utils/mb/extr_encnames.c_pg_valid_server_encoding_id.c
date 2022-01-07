
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_VALID_BE_ENCODING (int) ;

int
pg_valid_server_encoding_id(int encoding)
{
 return PG_VALID_BE_ENCODING(encoding);
}
