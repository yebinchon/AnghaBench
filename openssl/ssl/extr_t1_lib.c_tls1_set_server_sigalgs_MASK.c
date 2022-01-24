#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_14__ {scalar_t__ const sigalg; } ;
struct TYPE_11__ {scalar_t__* valid_flags; int /*<<< orphan*/ * peer_sigalgs; int /*<<< orphan*/ * peer_cert_sigalgs; } ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
struct TYPE_13__ {int /*<<< orphan*/ * shared_sigalgs; TYPE_2__ s3; scalar_t__ shared_sigalgslen; } ;
typedef  TYPE_3__ SSL ;
typedef  TYPE_4__ SIGALG_LOOKUP ;

/* Variables and functions */
 scalar_t__ CERT_PKEY_SIGN ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS1_SET_SERVER_SIGALGS ; 
 size_t SSL_PKEY_NUM ; 
 int /*<<< orphan*/  SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_3__*,int,scalar_t__ const**) ; 
 TYPE_4__* FUNC3 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

int FUNC5(SSL *s)
{
    size_t i;

    /* Clear any shared signature algorithms */
    FUNC0(s->shared_sigalgs);
    s->shared_sigalgs = NULL;
    s->shared_sigalgslen = 0;
    /* Clear certificate validity flags */
    for (i = 0; i < SSL_PKEY_NUM; i++)
        s->s3.tmp.valid_flags[i] = 0;
    /*
     * If peer sent no signature algorithms check to see if we support
     * the default algorithm for each certificate type
     */
    if (s->s3.tmp.peer_cert_sigalgs == NULL
            && s->s3.tmp.peer_sigalgs == NULL) {
        const uint16_t *sent_sigs;
        size_t sent_sigslen = FUNC2(s, 1, &sent_sigs);

        for (i = 0; i < SSL_PKEY_NUM; i++) {
            const SIGALG_LOOKUP *lu = FUNC3(s, i);
            size_t j;

            if (lu == NULL)
                continue;
            /* Check default matches a type we sent */
            for (j = 0; j < sent_sigslen; j++) {
                if (lu->sigalg == sent_sigs[j]) {
                        s->s3.tmp.valid_flags[i] = CERT_PKEY_SIGN;
                        break;
                }
            }
        }
        return 1;
    }

    if (!FUNC4(s)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS1_SET_SERVER_SIGALGS, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (s->shared_sigalgs != NULL)
        return 1;

    /* Fatal error if no shared signature algorithms */
    FUNC1(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS1_SET_SERVER_SIGALGS,
             SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS);
    return 0;
}