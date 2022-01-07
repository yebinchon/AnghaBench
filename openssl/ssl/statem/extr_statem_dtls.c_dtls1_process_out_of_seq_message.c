
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct hm_header_st {size_t frag_len; size_t frag_off; size_t msg_len; int seq; scalar_t__ type; } ;
typedef int seq64be ;
typedef int pitem ;
struct TYPE_15__ {unsigned char* fragment; int msg_header; } ;
typedef TYPE_3__ hm_fragment ;
typedef int devnull ;
struct TYPE_16__ {TYPE_2__* d1; TYPE_1__* method; } ;
struct TYPE_14__ {int handshake_read_seq; int buffered_messages; } ;
struct TYPE_13__ {int (* ssl_read_bytes ) (TYPE_4__*,int ,int *,unsigned char*,int,int ,size_t*) ;} ;
typedef TYPE_4__ SSL ;


 int DTLS1_HM_FRAGMENT_RETRY ;
 scalar_t__ SSL3_MT_FINISHED ;
 int SSL3_RT_HANDSHAKE ;
 int dtls1_hm_fragment_free (TYPE_3__*) ;
 TYPE_3__* dtls1_hm_fragment_new (size_t,int ) ;
 size_t dtls1_max_handshake_message_len (TYPE_4__*) ;
 int dtls1_reassemble_fragment (TYPE_4__*,struct hm_header_st const*) ;
 int memcpy (int *,struct hm_header_st const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ossl_assert (int ) ;
 int * pitem_new (unsigned char*,TYPE_3__*) ;
 int * pqueue_find (int ,unsigned char*) ;
 int * pqueue_insert (int ,int *) ;
 int stub1 (TYPE_4__*,int ,int *,unsigned char*,int,int ,size_t*) ;
 int stub2 (TYPE_4__*,int ,int *,unsigned char*,size_t,int ,size_t*) ;

__attribute__((used)) static int
dtls1_process_out_of_seq_message(SSL *s, const struct hm_header_st *msg_hdr)
{
    int i = -1;
    hm_fragment *frag = ((void*)0);
    pitem *item = ((void*)0);
    unsigned char seq64be[8];
    size_t frag_len = msg_hdr->frag_len;
    size_t readbytes;

    if ((msg_hdr->frag_off + frag_len) > msg_hdr->msg_len)
        goto err;


    memset(seq64be, 0, sizeof(seq64be));
    seq64be[6] = (unsigned char)(msg_hdr->seq >> 8);
    seq64be[7] = (unsigned char)msg_hdr->seq;
    item = pqueue_find(s->d1->buffered_messages, seq64be);





    if (item != ((void*)0) && frag_len != msg_hdr->msg_len)
        item = ((void*)0);






    if (msg_hdr->seq <= s->d1->handshake_read_seq ||
        msg_hdr->seq > s->d1->handshake_read_seq + 10 || item != ((void*)0) ||
        (s->d1->handshake_read_seq == 0 && msg_hdr->type == SSL3_MT_FINISHED)) {
        unsigned char devnull[256];

        while (frag_len) {
            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                          devnull,
                                          frag_len >
                                          sizeof(devnull) ? sizeof(devnull) :
                                          frag_len, 0, &readbytes);
            if (i <= 0)
                goto err;
            frag_len -= readbytes;
        }
    } else {
        if (frag_len != msg_hdr->msg_len) {
            return dtls1_reassemble_fragment(s, msg_hdr);
        }

        if (frag_len > dtls1_max_handshake_message_len(s))
            goto err;

        frag = dtls1_hm_fragment_new(frag_len, 0);
        if (frag == ((void*)0))
            goto err;

        memcpy(&(frag->msg_header), msg_hdr, sizeof(*msg_hdr));

        if (frag_len) {



            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                          frag->fragment, frag_len, 0,
                                          &readbytes);
            if (i<=0 || readbytes != frag_len)
                i = -1;
            if (i <= 0)
                goto err;
        }

        item = pitem_new(seq64be, frag);
        if (item == ((void*)0))
            goto err;

        item = pqueue_insert(s->d1->buffered_messages, item);
        if (!ossl_assert(item != ((void*)0)))
            goto err;
    }

    return DTLS1_HM_FRAGMENT_RETRY;

 err:
    if (item == ((void*)0))
        dtls1_hm_fragment_free(frag);
    return 0;
}
