
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * peer; } ;
typedef TYPE_1__ SSL_SESSION ;



X509 *SSL_SESSION_get0_peer(SSL_SESSION *s)
{
    return s->peer;
}
