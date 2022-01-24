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
struct TYPE_6__ {int /*<<< orphan*/ * handshake_buffer; int /*<<< orphan*/ * handshake_dgst; } ;
struct TYPE_7__ {TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,long) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_DIGEST_CACHED_RECORDS ; 
 int /*<<< orphan*/  SSL_R_BAD_HANDSHAKE_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 

int FUNC7(SSL *s, int keep)
{
    const EVP_MD *md;
    long hdatalen;
    void *hdata;

    if (s->s3.handshake_dgst == NULL) {
        hdatalen = FUNC1(s->s3.handshake_buffer, &hdata);
        if (hdatalen <= 0) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     SSL_R_BAD_HANDSHAKE_LENGTH);
            return 0;
        }

        s->s3.handshake_dgst = FUNC4();
        if (s->s3.handshake_dgst == NULL) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     ERR_R_MALLOC_FAILURE);
            return 0;
        }

        md = FUNC6(s);
        if (md == NULL || !FUNC2(s->s3.handshake_dgst, md, NULL)
            || !FUNC3(s->s3.handshake_dgst, hdata, hdatalen)) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    if (keep == 0) {
        FUNC0(s->s3.handshake_buffer);
        s->s3.handshake_buffer = NULL;
    }

    return 1;
}