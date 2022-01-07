
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ SSL_pending (int ) ;

bool
pgtls_read_pending(PGconn *conn)
{
 return SSL_pending(conn->ssl) > 0;
}
