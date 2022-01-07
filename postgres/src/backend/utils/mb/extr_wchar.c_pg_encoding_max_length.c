
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxmblen; } ;


 int Assert (int ) ;
 int PG_VALID_ENCODING (int) ;
 TYPE_1__* pg_wchar_table ;

int
pg_encoding_max_length(int encoding)
{
 Assert(PG_VALID_ENCODING(encoding));

 return pg_wchar_table[encoding].maxmblen;
}
