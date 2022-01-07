
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_in_use; } ;
typedef TYPE_1__ PGconn ;



int
PQsslInUse(PGconn *conn)
{
 if (!conn)
  return 0;
 return conn->ssl_in_use;
}
