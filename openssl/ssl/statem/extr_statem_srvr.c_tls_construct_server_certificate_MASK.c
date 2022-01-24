#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_8__ {int /*<<< orphan*/ * cert; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
struct TYPE_10__ {TYPE_2__ s3; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  CERT_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(SSL *s, WPACKET *pkt)
{
    CERT_PKEY *cpk = s->s3.tmp.cert;

    if (cpk == NULL) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /*
     * In TLSv1.3 the certificate chain is always preceded by a 0 length context
     * for the server Certificate message
     */
    if (FUNC0(s) && !FUNC2(pkt, 0)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_SERVER_CERTIFICATE, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!FUNC3(s, pkt, cpk)) {
        /* SSLfatal() already called */
        return 0;
    }

    return 1;
}