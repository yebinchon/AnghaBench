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
struct TYPE_6__ {int /*<<< orphan*/ * handshake_buffer; } ;
struct TYPE_7__ {TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_INIT_FINISHED_MAC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(SSL *s)
{
    BIO *buf = FUNC0(FUNC1());

    if (buf == NULL) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_INIT_FINISHED_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC4(s);
    s->s3.handshake_buffer = buf;
    (void)FUNC2(s->s3.handshake_buffer, BIO_CLOSE);
    return 1;
}