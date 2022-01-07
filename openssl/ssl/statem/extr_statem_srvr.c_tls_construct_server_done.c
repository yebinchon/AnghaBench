
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_6__ {int cert_request; } ;
struct TYPE_7__ {TYPE_1__ tmp; } ;
struct TYPE_8__ {TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;


 int ssl3_digest_cached_records (TYPE_3__*,int ) ;

int tls_construct_server_done(SSL *s, WPACKET *pkt)
{
    if (!s->s3.tmp.cert_request) {
        if (!ssl3_digest_cached_records(s, 0)) {

            return 0;
        }
    }
    return 1;
}
