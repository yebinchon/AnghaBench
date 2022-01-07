
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxmblen; } ;


 size_t GetDatabaseEncoding () ;
 TYPE_1__* pg_wchar_table ;

int
pg_database_encoding_max_length(void)
{
 return pg_wchar_table[GetDatabaseEncoding()].maxmblen;
}
