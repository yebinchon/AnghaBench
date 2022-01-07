
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sock; scalar_t__ ssl_ctx; scalar_t__ ssl; } ;


 int SSL_CTX_free (scalar_t__) ;
 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int close (scalar_t__) ;
 TYPE_1__* con ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void close_conn() {
    if (con == ((void*)0)) return;
    if (con->sock > 0) close(con->sock);
    free(con);
    con = ((void*)0);
}
