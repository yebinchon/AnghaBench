
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ data; } ;
typedef TYPE_3__ pitem ;
struct TYPE_12__ {scalar_t__ seq; size_t frag_len; size_t frag_off; } ;
struct TYPE_16__ {TYPE_10__ msg_header; int fragment; int * reassembly; } ;
typedef TYPE_4__ hm_fragment ;
struct TYPE_17__ {scalar_t__ init_num; TYPE_2__* init_buf; TYPE_1__* d1; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {scalar_t__ handshake_read_seq; int buffered_messages; } ;
typedef TYPE_5__ SSL ;


 int DTLS1_HM_HEADER_LENGTH ;
 int dtls1_hm_fragment_free (TYPE_4__*) ;
 int dtls1_preprocess_fragment (TYPE_5__*,TYPE_10__*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int pitem_free (TYPE_3__*) ;
 TYPE_3__* pqueue_peek (int ) ;
 int pqueue_pop (int ) ;

__attribute__((used)) static int dtls1_retrieve_buffered_fragment(SSL *s, size_t *len)
{






    pitem *item;
    hm_fragment *frag;
    int ret;

    do {
        item = pqueue_peek(s->d1->buffered_messages);
        if (item == ((void*)0))
            return 0;

        frag = (hm_fragment *)item->data;

        if (frag->msg_header.seq < s->d1->handshake_read_seq) {

            pqueue_pop(s->d1->buffered_messages);
            dtls1_hm_fragment_free(frag);
            pitem_free(item);
            item = ((void*)0);
            frag = ((void*)0);
        }
    } while (item == ((void*)0));


    if (frag->reassembly != ((void*)0))
        return 0;

    if (s->d1->handshake_read_seq == frag->msg_header.seq) {
        size_t frag_len = frag->msg_header.frag_len;
        pqueue_pop(s->d1->buffered_messages);


        ret = dtls1_preprocess_fragment(s, &frag->msg_header);

        if (ret && frag->msg_header.frag_len > 0) {
            unsigned char *p =
                (unsigned char *)s->init_buf->data + DTLS1_HM_HEADER_LENGTH;
            memcpy(&p[frag->msg_header.frag_off], frag->fragment,
                   frag->msg_header.frag_len);
        }

        dtls1_hm_fragment_free(frag);
        pitem_free(item);

        if (ret) {
            *len = frag_len;
            return 1;
        }


        s->init_num = 0;
        return -1;
    } else {
        return 0;
    }
}
