
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gssenc; int gctx; } ;
typedef TYPE_1__ PGconn ;



int
PQgssEncInUse(PGconn *conn)
{
 if (!conn || !conn->gctx)
  return 0;

 return conn->gssenc;
}
