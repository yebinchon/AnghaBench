#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sess_cache_full; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/  session_cache_tail; int /*<<< orphan*/  sessions; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  TYPE_2__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(SSL_CTX *ctx, SSL_SESSION *c)
{
    int ret = 0;
    SSL_SESSION *s;

    /*
     * add just 1 reference count for the SSL_CTX's session cache even though
     * it has two ways of access: each session is in a doubly linked list and
     * an lhash
     */
    FUNC7(c);
    /*
     * if session c is in already in cache, we take back the increment later
     */

    FUNC1(ctx->lock);
    s = FUNC8(ctx->sessions, c);

    /*
     * s != NULL iff we already had a session with the given PID. In this
     * case, s == c should hold (then we did not really modify
     * ctx->sessions), or we're in trouble.
     */
    if (s != NULL && s != c) {
        /* We *are* in trouble ... */
        FUNC6(ctx, s);
        FUNC4(s);
        /*
         * ... so pretend the other session did not exist in cache (we cannot
         * handle two SSL_SESSION structures with identical session ID in the
         * same cache, which could happen e.g. when two threads concurrently
         * obtain the same session from an external cache)
         */
        s = NULL;
    } else if (s == NULL &&
               FUNC9(ctx->sessions, c) == NULL) {
        /* s == NULL can also mean OOM error in lh_SSL_SESSION_insert ... */

        /*
         * ... so take back the extra reference and also don't add
         * the session to the SSL_SESSION_list at this time
         */
        s = c;
    }

    /* Put at the head of the queue unless it is already in the cache */
    if (s == NULL)
        FUNC5(ctx, c);

    if (s != NULL) {
        /*
         * existing cache entry -- decrement previously incremented reference
         * count because it already takes into account the cache
         */

        FUNC4(s);    /* s == c */
        ret = 0;
    } else {
        /*
         * new cache entry -- remove old ones if cache has become too large
         */

        ret = 1;

        if (FUNC2(ctx) > 0) {
            while (FUNC3(ctx) > FUNC2(ctx)) {
                if (!FUNC10(ctx, ctx->session_cache_tail, 0))
                    break;
                else
                    FUNC11(&ctx->stats.sess_cache_full);
            }
        }
    }
    FUNC0(ctx->lock);
    return ret;
}