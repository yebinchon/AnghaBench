#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {int /*<<< orphan*/  tls13_cookie_len; int /*<<< orphan*/  tls13_cookie; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_COOKIE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    PACKET cookie;

    if (!FUNC0(pkt, &cookie)
            || !FUNC1(&cookie, &s->ext.tls13_cookie,
                              &s->ext.tls13_cookie_len)) {
        FUNC2(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    return 1;
}