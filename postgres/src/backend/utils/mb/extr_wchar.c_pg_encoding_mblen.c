
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mblen ) (unsigned char const*) ;} ;


 size_t PG_SQL_ASCII ;
 scalar_t__ PG_VALID_ENCODING (int) ;
 TYPE_1__* pg_wchar_table ;
 int stub1 (unsigned char const*) ;
 int stub2 (unsigned char const*) ;

int
pg_encoding_mblen(int encoding, const char *mbstr)
{
 return (PG_VALID_ENCODING(encoding) ?
   pg_wchar_table[encoding].mblen((const unsigned char *) mbstr) :
   pg_wchar_table[PG_SQL_ASCII].mblen((const unsigned char *) mbstr));
}
