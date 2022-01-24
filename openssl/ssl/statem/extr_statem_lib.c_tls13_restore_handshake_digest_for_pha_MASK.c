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
struct TYPE_5__ {int /*<<< orphan*/  handshake_dgst; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pha_dgst; TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(SSL *s)
{
    if (s->pha_dgst == NULL) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!FUNC0(s->s3.handshake_dgst,
                            s->pha_dgst)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    return 1;
}