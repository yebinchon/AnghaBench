
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_2__* session; TYPE_1__ s3; scalar_t__ hit; int server; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_3__ SSL ;


 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_F_FINAL_EMS ;
 int SSL_R_INCONSISTENT_EXTMS ;
 int SSL_SESS_FLAG_EXTMS ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLS1_FLAGS_RECEIVED_EXTMS ;

__attribute__((used)) static int final_ems(SSL *s, unsigned int context, int sent)
{
    if (!s->server && s->hit) {




        if (!(s->s3.flags & TLS1_FLAGS_RECEIVED_EXTMS) !=
            !(s->session->flags & SSL_SESS_FLAG_EXTMS)) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_FINAL_EMS,
                     SSL_R_INCONSISTENT_EXTMS);
            return 0;
        }
    }

    return 1;
}
