#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t wpend_tot; unsigned char const* wpend_buf; int wpend_type; int numwpipes; size_t wpend_ret; int /*<<< orphan*/ * wbuf; } ;
struct TYPE_7__ {int mode; TYPE_1__ rlayer; int /*<<< orphan*/  rwstate; int /*<<< orphan*/ * wbio; } ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int SSL3_RT_APPLICATION_DATA ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_WRITE_PENDING ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int /*<<< orphan*/  SSL_NOTHING ; 
 int /*<<< orphan*/  SSL_R_BAD_WRITE_RETRY ; 
 int /*<<< orphan*/  SSL_R_BIO_NOT_SET ; 
 int /*<<< orphan*/  SSL_WRITING ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(SSL *s, int type, const unsigned char *buf, size_t len,
                       size_t *written)
{
    int i;
    SSL3_BUFFER *wb = s->rlayer.wbuf;
    size_t currbuf = 0;
    size_t tmpwrit = 0;

    if ((s->rlayer.wpend_tot > len)
        || (!(s->mode & SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER)
            && (s->rlayer.wpend_buf != buf))
        || (s->rlayer.wpend_type != type)) {
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                 SSL_R_BAD_WRITE_RETRY);
        return -1;
    }

    for (;;) {
        /* Loop until we find a buffer we haven't written out yet */
        if (FUNC6(&wb[currbuf]) == 0
            && currbuf < s->rlayer.numwpipes - 1) {
            currbuf++;
            continue;
        }
        FUNC12();
        if (s->wbio != NULL) {
            s->rwstate = SSL_WRITING;

            /*
             * To prevent coalescing of control and data messages,
             * such as in buffer_write, we flush the BIO
             */
            if (FUNC1(s->wbio) && type != SSL3_RT_APPLICATION_DATA) {
                i = FUNC0(s->wbio);
                if (i <= 0)
                    return i;
            }

            if (FUNC1(s->wbio)
                && type != SSL3_RT_APPLICATION_DATA) {
                FUNC2(s->wbio, type);
            }
            /* TODO(size_t): Convert this call */
            i = FUNC3(s->wbio, (char *)
                          &(FUNC5(&wb[currbuf])
                            [FUNC7(&wb[currbuf])]),
                          (unsigned int)FUNC6(&wb[currbuf]));
            if (i >= 0)
                tmpwrit = i;
        } else {
            FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                     SSL_R_BIO_NOT_SET);
            i = -1;
        }
        if (i > 0 && tmpwrit == FUNC6(&wb[currbuf])) {
            FUNC8(&wb[currbuf], 0);
            FUNC4(&wb[currbuf], tmpwrit);
            if (currbuf + 1 < s->rlayer.numwpipes)
                continue;
            s->rwstate = SSL_NOTHING;
            *written = s->rlayer.wpend_ret;
            return 1;
        } else if (i <= 0) {
            if (FUNC10(s)) {
                /*
                 * For DTLS, just drop it. That's kind of the whole point in
                 * using a datagram service
                 */
                FUNC8(&wb[currbuf], 0);
            }
            return i;
        }
        FUNC4(&wb[currbuf], tmpwrit);
        FUNC9(&wb[currbuf], tmpwrit);
    }
}