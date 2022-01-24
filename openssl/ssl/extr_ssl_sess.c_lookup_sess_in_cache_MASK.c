#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_11__* session_ctx; int /*<<< orphan*/  version; } ;
struct TYPE_15__ {size_t session_id_length; int /*<<< orphan*/  session_id; int /*<<< orphan*/  ssl_version; } ;
struct TYPE_14__ {int /*<<< orphan*/  sess_cb_hit; int /*<<< orphan*/  sess_miss; } ;
struct TYPE_13__ {int session_cache_mode; TYPE_1__ stats; TYPE_2__* (* get_session_cb ) (TYPE_3__*,unsigned char const*,size_t,int*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions; } ;
typedef  TYPE_2__ SSL_SESSION ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,TYPE_2__*) ; 
 size_t SSL_MAX_SSL_SESSION_ID_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int SSL_SESS_CACHE_NO_INTERNAL_LOOKUP ; 
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,unsigned char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

SSL_SESSION *FUNC9(SSL *s, const unsigned char *sess_id,
                                  size_t sess_id_len)
{
    SSL_SESSION *ret = NULL;

    if ((s->session_ctx->session_cache_mode
         & SSL_SESS_CACHE_NO_INTERNAL_LOOKUP) == 0) {
        SSL_SESSION data;

        data.ssl_version = s->version;
        if (!FUNC6(sess_id_len <= SSL_MAX_SSL_SESSION_ID_LENGTH))
            return NULL;

        FUNC5(data.session_id, sess_id, sess_id_len);
        data.session_id_length = sess_id_len;

        FUNC0(s->session_ctx->lock);
        ret = FUNC4(s->session_ctx->sessions, &data);
        if (ret != NULL) {
            /* don't allow other threads to steal it: */
            FUNC3(ret);
        }
        FUNC1(s->session_ctx->lock);
        if (ret == NULL)
            FUNC8(&s->session_ctx->stats.sess_miss);
    }

    if (ret == NULL && s->session_ctx->get_session_cb != NULL) {
        int copy = 1;

        ret = s->session_ctx->get_session_cb(s, sess_id, sess_id_len, &copy);

        if (ret != NULL) {
            FUNC8(&s->session_ctx->stats.sess_cb_hit);

            /*
             * Increment reference count now if the session callback asks us
             * to do so (note that if the session structures returned by the
             * callback are shared between threads, it must handle the
             * reference count itself [i.e. copy == 0], or things won't be
             * thread-safe).
             */
            if (copy)
                FUNC3(ret);

            /*
             * Add the externally cached session to the internal cache as
             * well if and only if we are supposed to.
             */
            if ((s->session_ctx->session_cache_mode &
                 SSL_SESS_CACHE_NO_INTERNAL_STORE) == 0) {
                /*
                 * Either return value of SSL_CTX_add_session should not
                 * interrupt the session resumption process. The return
                 * value is intentionally ignored.
                 */
                (void)FUNC2(s->session_ctx, ret);
            }
        }
    }

    return ret;
}