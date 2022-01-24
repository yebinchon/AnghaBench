#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int early_data_state; int mode; int /*<<< orphan*/  wbio; int /*<<< orphan*/ * psk_use_session_cb; TYPE_2__* session; int /*<<< orphan*/  server; } ;
struct TYPE_9__ {int /*<<< orphan*/  max_early_data; } ;
struct TYPE_10__ {TYPE_1__ ext; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int SSL_EARLY_DATA_CONNECTING ; 
#define  SSL_EARLY_DATA_CONNECT_RETRY 133 
#define  SSL_EARLY_DATA_FINISHED_READING 132 
#define  SSL_EARLY_DATA_NONE 131 
#define  SSL_EARLY_DATA_READ_RETRY 130 
 int SSL_EARLY_DATA_UNAUTH_WRITING ; 
#define  SSL_EARLY_DATA_WRITE_FLUSH 129 
#define  SSL_EARLY_DATA_WRITE_RETRY 128 
 int SSL_EARLY_DATA_WRITING ; 
 int /*<<< orphan*/  SSL_F_SSL_WRITE_EARLY_DATA ; 
 int SSL_MODE_ENABLE_PARTIAL_WRITE ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,void const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 

int FUNC6(SSL *s, const void *buf, size_t num, size_t *written)
{
    int ret, early_data_state;
    size_t writtmp;
    uint32_t partialwrite;

    switch (s->early_data_state) {
    case SSL_EARLY_DATA_NONE:
        if (s->server
                || !FUNC2(s)
                || ((s->session == NULL || s->session->ext.max_early_data == 0)
                     && (s->psk_use_session_cb == NULL))) {
            FUNC4(SSL_F_SSL_WRITE_EARLY_DATA,
                   ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
            return 0;
        }
        /* fall through */

    case SSL_EARLY_DATA_CONNECT_RETRY:
        s->early_data_state = SSL_EARLY_DATA_CONNECTING;
        ret = FUNC1(s);
        if (ret <= 0) {
            /* NBIO or error */
            s->early_data_state = SSL_EARLY_DATA_CONNECT_RETRY;
            return 0;
        }
        /* fall through */

    case SSL_EARLY_DATA_WRITE_RETRY:
        s->early_data_state = SSL_EARLY_DATA_WRITING;
        /*
         * We disable partial write for early data because we don't keep track
         * of how many bytes we've written between the SSL_write_ex() call and
         * the flush if the flush needs to be retried)
         */
        partialwrite = s->mode & SSL_MODE_ENABLE_PARTIAL_WRITE;
        s->mode &= ~SSL_MODE_ENABLE_PARTIAL_WRITE;
        ret = FUNC3(s, buf, num, &writtmp);
        s->mode |= partialwrite;
        if (!ret) {
            s->early_data_state = SSL_EARLY_DATA_WRITE_RETRY;
            return ret;
        }
        s->early_data_state = SSL_EARLY_DATA_WRITE_FLUSH;
        /* fall through */

    case SSL_EARLY_DATA_WRITE_FLUSH:
        /* The buffering BIO is still in place so we need to flush it */
        if (FUNC5(s) != 1)
            return 0;
        *written = num;
        s->early_data_state = SSL_EARLY_DATA_WRITE_RETRY;
        return 1;

    case SSL_EARLY_DATA_FINISHED_READING:
    case SSL_EARLY_DATA_READ_RETRY:
        early_data_state = s->early_data_state;
        /* We are a server writing to an unauthenticated client */
        s->early_data_state = SSL_EARLY_DATA_UNAUTH_WRITING;
        ret = FUNC3(s, buf, num, written);
        /* The buffering BIO is still in place */
        if (ret)
            (void)FUNC0(s->wbio);
        s->early_data_state = early_data_state;
        return ret;

    default:
        FUNC4(SSL_F_SSL_WRITE_EARLY_DATA, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
}