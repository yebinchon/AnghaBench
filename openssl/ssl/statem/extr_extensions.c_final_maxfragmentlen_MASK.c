#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ max_send_fragment; scalar_t__ session; scalar_t__ hit; scalar_t__ server; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SSL_AD_MISSING_EXTENSION ; 
 int /*<<< orphan*/  SSL_F_FINAL_MAXFRAGMENTLEN ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(SSL *s, unsigned int context, int sent)
{
    /*
     * Session resumption on server-side with MFL extension active
     *  BUT MFL extension packet was not resent (i.e. sent == 0)
     */
    if (s->server && s->hit && FUNC2(s->session)
            && !sent ) {
        FUNC1(s, SSL_AD_MISSING_EXTENSION, SSL_F_FINAL_MAXFRAGMENTLEN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    /* Current SSL buffer is lower than requested MFL */
    if (s->session && FUNC2(s->session)
            && s->max_send_fragment < FUNC0(s->session))
        /* trigger a larger buffer reallocation */
        if (!FUNC3(s)) {
            /* SSLfatal() already called */
            return 0;
        }

    return 1;
}