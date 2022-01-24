#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct hm_header_st {size_t msg_len; int /*<<< orphan*/  seq; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {int message_type; } ;
struct TYPE_13__ {TYPE_1__ tmp; } ;
struct TYPE_16__ {size_t init_num; scalar_t__ version; TYPE_4__* init_buf; scalar_t__ init_msg; TYPE_3__* d1; int /*<<< orphan*/  msg_callback_arg; int /*<<< orphan*/  (* msg_callback ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_5__*,int /*<<< orphan*/ ) ;TYPE_2__ s3; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {int /*<<< orphan*/  handshake_read_seq; struct hm_header_st r_msg_hdr; } ;
typedef  TYPE_5__ SSL ;

/* Variables and functions */
 scalar_t__ DTLS1_BAD_VER ; 
 int DTLS1_HM_BAD_FRAGMENT ; 
 int DTLS1_HM_FRAGMENT_RETRY ; 
 scalar_t__ DTLS1_HM_HEADER_LENGTH ; 
 int SSL3_MT_CHANGE_CIPHER_SPEC ; 
 int SSL3_MT_FINISHED ; 
 int /*<<< orphan*/  SSL3_RT_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  SSL3_RT_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hm_header_st*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned char*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_5__*,int /*<<< orphan*/ ) ; 

int FUNC8(SSL *s, int *mt, size_t *len)
{
    struct hm_header_st *msg_hdr;
    unsigned char *p;
    size_t msg_len;
    size_t tmplen;
    int errtype;

    msg_hdr = &s->d1->r_msg_hdr;
    FUNC2(msg_hdr, 0, sizeof(*msg_hdr));

 again:
    if (!FUNC0(s, &errtype, &tmplen)) {
        if (errtype == DTLS1_HM_BAD_FRAGMENT
                || errtype == DTLS1_HM_FRAGMENT_RETRY) {
            /* bad fragment received */
            goto again;
        }
        return 0;
    }

    *mt = s->s3.tmp.message_type;

    p = (unsigned char *)s->init_buf->data;
    *len = s->init_num;

    if (*mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
        if (s->msg_callback) {
            s->msg_callback(0, s->version, SSL3_RT_CHANGE_CIPHER_SPEC,
                            p, 1, s, s->msg_callback_arg);
        }
        /*
         * This isn't a real handshake message so skip the processing below.
         */
        return 1;
    }

    msg_len = msg_hdr->msg_len;

    /* reconstruct message header */
    *(p++) = msg_hdr->type;
    FUNC1(msg_len, p);
    FUNC3(msg_hdr->seq, p);
    FUNC1(0, p);
    FUNC1(msg_len, p);
    if (s->version != DTLS1_BAD_VER) {
        p -= DTLS1_HM_HEADER_LENGTH;
        msg_len += DTLS1_HM_HEADER_LENGTH;
    }

    /*
     * If receiving Finished, record MAC of prior handshake messages for
     * Finished verification.
     */
    if (*mt == SSL3_MT_FINISHED && !FUNC5(s)) {
        /* SSLfatal() already called */
        return 0;
    }

    if (!FUNC4(s, p, msg_len))
        return 0;
    if (s->msg_callback)
        s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE,
                        p, msg_len, s, s->msg_callback_arg);

    FUNC2(msg_hdr, 0, sizeof(*msg_hdr));

    s->d1->handshake_read_seq++;

    s->init_msg = s->init_buf->data + DTLS1_HM_HEADER_LENGTH;

    return 1;
}