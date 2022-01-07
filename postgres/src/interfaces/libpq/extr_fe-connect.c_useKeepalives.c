
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * keepalives; } ;
typedef TYPE_1__ PGconn ;


 int strtol (int *,char**,int) ;

__attribute__((used)) static int
useKeepalives(PGconn *conn)
{
 char *ep;
 int val;

 if (conn->keepalives == ((void*)0))
  return 1;
 val = strtol(conn->keepalives, &ep, 10);
 if (*ep)
  return -1;
 return val != 0 ? 1 : 0;
}
