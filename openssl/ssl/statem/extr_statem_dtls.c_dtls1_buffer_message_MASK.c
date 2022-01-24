#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seq64be ;
typedef  int /*<<< orphan*/  pitem ;
struct TYPE_14__ {int /*<<< orphan*/  epoch; int /*<<< orphan*/  session; int /*<<< orphan*/  compress; int /*<<< orphan*/  write_hash; int /*<<< orphan*/  enc_write_ctx; } ;
struct TYPE_15__ {unsigned int msg_len; unsigned int frag_len; int is_ccs; int /*<<< orphan*/  seq; TYPE_3__ saved_retransmit_state; scalar_t__ frag_off; int /*<<< orphan*/  type; } ;
struct TYPE_17__ {TYPE_4__ msg_header; int /*<<< orphan*/  fragment; } ;
typedef  TYPE_6__ hm_fragment ;
struct TYPE_18__ {scalar_t__ init_off; scalar_t__ version; TYPE_5__* d1; int /*<<< orphan*/  rlayer; int /*<<< orphan*/  session; int /*<<< orphan*/  compress; int /*<<< orphan*/  write_hash; int /*<<< orphan*/  enc_write_ctx; scalar_t__ init_num; TYPE_1__* init_buf; } ;
struct TYPE_13__ {int msg_len; int /*<<< orphan*/  type; int /*<<< orphan*/  seq; } ;
struct TYPE_16__ {int /*<<< orphan*/  sent_messages; TYPE_2__ w_msg_hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_7__ SSL ;

/* Variables and functions */
 scalar_t__ DTLS1_BAD_VER ; 
 int DTLS1_CCS_HEADER_LENGTH ; 
 unsigned int DTLS1_HM_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_6__* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(SSL *s, int is_ccs)
{
    pitem *item;
    hm_fragment *frag;
    unsigned char seq64be[8];

    /*
     * this function is called immediately after a message has been
     * serialized
     */
    if (!FUNC6(s->init_off == 0))
        return 0;

    frag = FUNC3(s->init_num, 0);
    if (frag == NULL)
        return 0;

    FUNC4(frag->fragment, s->init_buf->data, s->init_num);

    if (is_ccs) {
        /* For DTLS1_BAD_VER the header length is non-standard */
        if (!FUNC6(s->d1->w_msg_hdr.msg_len +
                         ((s->version ==
                           DTLS1_BAD_VER) ? 3 : DTLS1_CCS_HEADER_LENGTH)
                         == (unsigned int)s->init_num))
            return 0;
    } else {
        if (!FUNC6(s->d1->w_msg_hdr.msg_len +
                         DTLS1_HM_HEADER_LENGTH == (unsigned int)s->init_num))
            return 0;
    }

    frag->msg_header.msg_len = s->d1->w_msg_hdr.msg_len;
    frag->msg_header.seq = s->d1->w_msg_hdr.seq;
    frag->msg_header.type = s->d1->w_msg_hdr.type;
    frag->msg_header.frag_off = 0;
    frag->msg_header.frag_len = s->d1->w_msg_hdr.msg_len;
    frag->msg_header.is_ccs = is_ccs;

    /* save current state */
    frag->msg_header.saved_retransmit_state.enc_write_ctx = s->enc_write_ctx;
    frag->msg_header.saved_retransmit_state.write_hash = s->write_hash;
    frag->msg_header.saved_retransmit_state.compress = s->compress;
    frag->msg_header.saved_retransmit_state.session = s->session;
    frag->msg_header.saved_retransmit_state.epoch =
        FUNC0(&s->rlayer);

    FUNC5(seq64be, 0, sizeof(seq64be));
    seq64be[6] =
        (unsigned
         char)(FUNC1(frag->msg_header.seq,
                                        frag->msg_header.is_ccs) >> 8);
    seq64be[7] =
        (unsigned
         char)(FUNC1(frag->msg_header.seq,
                                        frag->msg_header.is_ccs));

    item = FUNC7(seq64be, frag);
    if (item == NULL) {
        FUNC2(frag);
        return 0;
    }

    FUNC8(s->d1->sent_messages, item);
    return 1;
}