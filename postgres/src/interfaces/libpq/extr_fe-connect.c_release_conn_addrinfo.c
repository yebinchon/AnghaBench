
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * addr_cur; int * addrlist; int addrlist_family; } ;
typedef TYPE_1__ PGconn ;


 int pg_freeaddrinfo_all (int ,int *) ;

__attribute__((used)) static void
release_conn_addrinfo(PGconn *conn)
{
 if (conn->addrlist)
 {
  pg_freeaddrinfo_all(conn->addrlist_family, conn->addrlist);
  conn->addrlist = ((void*)0);
  conn->addr_cur = ((void*)0);
 }
}
