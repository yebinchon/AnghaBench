
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int seq64be ;
typedef int pitem ;
struct TYPE_14__ {int epoch; int session; int compress; int write_hash; int enc_write_ctx; } ;
struct TYPE_15__ {unsigned int msg_len; unsigned int frag_len; int is_ccs; int seq; TYPE_3__ saved_retransmit_state; scalar_t__ frag_off; int type; } ;
struct TYPE_17__ {TYPE_4__ msg_header; int fragment; } ;
typedef TYPE_6__ hm_fragment ;
struct TYPE_18__ {scalar_t__ init_off; scalar_t__ version; TYPE_5__* d1; int rlayer; int session; int compress; int write_hash; int enc_write_ctx; scalar_t__ init_num; TYPE_1__* init_buf; } ;
struct TYPE_13__ {int msg_len; int type; int seq; } ;
struct TYPE_16__ {int sent_messages; TYPE_2__ w_msg_hdr; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_7__ SSL ;


 scalar_t__ DTLS1_BAD_VER ;
 int DTLS1_CCS_HEADER_LENGTH ;
 unsigned int DTLS1_HM_HEADER_LENGTH ;
 int DTLS_RECORD_LAYER_get_w_epoch (int *) ;
 int dtls1_get_queue_priority (int ,int) ;
 int dtls1_hm_fragment_free (TYPE_6__*) ;
 TYPE_6__* dtls1_hm_fragment_new (scalar_t__,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (unsigned char*,int ,int) ;
 int ossl_assert (int) ;
 int * pitem_new (unsigned char*,TYPE_6__*) ;
 int pqueue_insert (int ,int *) ;

int dtls1_buffer_message(SSL *s, int is_ccs)
{
    pitem *item;
    hm_fragment *frag;
    unsigned char seq64be[8];





    if (!ossl_assert(s->init_off == 0))
        return 0;

    frag = dtls1_hm_fragment_new(s->init_num, 0);
    if (frag == ((void*)0))
        return 0;

    memcpy(frag->fragment, s->init_buf->data, s->init_num);

    if (is_ccs) {

        if (!ossl_assert(s->d1->w_msg_hdr.msg_len +
                         ((s->version ==
                           DTLS1_BAD_VER) ? 3 : DTLS1_CCS_HEADER_LENGTH)
                         == (unsigned int)s->init_num))
            return 0;
    } else {
        if (!ossl_assert(s->d1->w_msg_hdr.msg_len +
                         DTLS1_HM_HEADER_LENGTH == (unsigned int)s->init_num))
            return 0;
    }

    frag->msg_header.msg_len = s->d1->w_msg_hdr.msg_len;
    frag->msg_header.seq = s->d1->w_msg_hdr.seq;
    frag->msg_header.type = s->d1->w_msg_hdr.type;
    frag->msg_header.frag_off = 0;
    frag->msg_header.frag_len = s->d1->w_msg_hdr.msg_len;
    frag->msg_header.is_ccs = is_ccs;


    frag->msg_header.saved_retransmit_state.enc_write_ctx = s->enc_write_ctx;
    frag->msg_header.saved_retransmit_state.write_hash = s->write_hash;
    frag->msg_header.saved_retransmit_state.compress = s->compress;
    frag->msg_header.saved_retransmit_state.session = s->session;
    frag->msg_header.saved_retransmit_state.epoch =
        DTLS_RECORD_LAYER_get_w_epoch(&s->rlayer);

    memset(seq64be, 0, sizeof(seq64be));
    seq64be[6] =
        (unsigned
         char)(dtls1_get_queue_priority(frag->msg_header.seq,
                                        frag->msg_header.is_ccs) >> 8);
    seq64be[7] =
        (unsigned
         char)(dtls1_get_queue_priority(frag->msg_header.seq,
                                        frag->msg_header.is_ccs));

    item = pitem_new(seq64be, frag);
    if (item == ((void*)0)) {
        dtls1_hm_fragment_free(frag);
        return 0;
    }

    pqueue_insert(s->d1->sent_messages, item);
    return 1;
}
