
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int session_id_len; int session_id; TYPE_3__* pre_proc_exts; } ;
struct TYPE_11__ {int data; int present; } ;
struct TYPE_9__ {scalar_t__ ticket_expected; } ;
struct TYPE_10__ {scalar_t__ version; TYPE_1__ ext; } ;
typedef int SSL_TICKET_STATUS ;
typedef int SSL_SESSION ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ RAW_EXTENSION ;
typedef TYPE_4__ CLIENTHELLO_MSG ;


 int PACKET_data (int *) ;
 size_t PACKET_remaining (int *) ;
 scalar_t__ SSL3_VERSION ;
 int SSL_TICKET_NONE ;
 size_t TLSEXT_IDX_session_ticket ;
 int tls_decrypt_ticket (TYPE_2__*,int ,size_t,int ,int ,int **) ;
 int tls_use_ticket (TYPE_2__*) ;

SSL_TICKET_STATUS tls_get_ticket_from_client(SSL *s, CLIENTHELLO_MSG *hello,
                                             SSL_SESSION **ret)
{
    size_t size;
    RAW_EXTENSION *ticketext;

    *ret = ((void*)0);
    s->ext.ticket_expected = 0;






    if (s->version <= SSL3_VERSION || !tls_use_ticket(s))
        return SSL_TICKET_NONE;

    ticketext = &hello->pre_proc_exts[TLSEXT_IDX_session_ticket];
    if (!ticketext->present)
        return SSL_TICKET_NONE;

    size = PACKET_remaining(&ticketext->data);

    return tls_decrypt_ticket(s, PACKET_data(&ticketext->data), size,
                              hello->session_id, hello->session_id_len, ret);
}
