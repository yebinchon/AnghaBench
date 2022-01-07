
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * conn; } ;
typedef TYPE_1__ ConnCacheEntry ;


 int PQfinish (int *) ;

__attribute__((used)) static void
disconnect_pg_server(ConnCacheEntry *entry)
{
 if (entry->conn != ((void*)0))
 {
  PQfinish(entry->conn);
  entry->conn = ((void*)0);
 }
}
