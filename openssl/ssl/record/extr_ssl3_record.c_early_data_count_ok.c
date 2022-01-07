
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ early_data; } ;
struct TYPE_10__ {scalar_t__ recv_max_early_data; scalar_t__ early_data_count; TYPE_1__ ext; int server; TYPE_3__* psksession; TYPE_3__* session; } ;
struct TYPE_8__ {scalar_t__ max_early_data; } ;
struct TYPE_9__ {TYPE_2__ ext; } ;
typedef TYPE_3__ SSL_SESSION ;
typedef TYPE_4__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 scalar_t__ SSL_EARLY_DATA_ACCEPTED ;
 int SSL_F_EARLY_DATA_COUNT_OK ;
 int SSL_R_TOO_MUCH_EARLY_DATA ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int ossl_assert (int) ;

int early_data_count_ok(SSL *s, size_t length, size_t overhead, int send)
{
    uint32_t max_early_data;
    SSL_SESSION *sess = s->session;






    if (!s->server && sess->ext.max_early_data == 0) {
        if (!ossl_assert(s->psksession != ((void*)0)
                         && s->psksession->ext.max_early_data > 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_EARLY_DATA_COUNT_OK,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        sess = s->psksession;
    }

    if (!s->server)
        max_early_data = sess->ext.max_early_data;
    else if (s->ext.early_data != SSL_EARLY_DATA_ACCEPTED)
        max_early_data = s->recv_max_early_data;
    else
        max_early_data = s->recv_max_early_data < sess->ext.max_early_data
                         ? s->recv_max_early_data : sess->ext.max_early_data;

    if (max_early_data == 0) {
        SSLfatal(s, send ? SSL_AD_INTERNAL_ERROR : SSL_AD_UNEXPECTED_MESSAGE,
                 SSL_F_EARLY_DATA_COUNT_OK, SSL_R_TOO_MUCH_EARLY_DATA);
        return 0;
    }


    max_early_data += overhead;

    if (s->early_data_count + length > max_early_data) {
        SSLfatal(s, send ? SSL_AD_INTERNAL_ERROR : SSL_AD_UNEXPECTED_MESSAGE,
                 SSL_F_EARLY_DATA_COUNT_OK, SSL_R_TOO_MUCH_EARLY_DATA);
        return 0;
    }
    s->early_data_count += length;

    return 1;
}
