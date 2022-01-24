#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {size_t client_sigalgslen; size_t conf_sigalgslen; int /*<<< orphan*/ * conf_sigalgs; int /*<<< orphan*/ * client_sigalgs; } ;
typedef  TYPE_1__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  SSL_F_TLS1_SET_RAW_SIGALGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

int FUNC4(CERT *c, const uint16_t *psigs, size_t salglen,
                     int client)
{
    uint16_t *sigalgs;

    if ((sigalgs = FUNC1(salglen * sizeof(*sigalgs))) == NULL) {
        FUNC2(SSL_F_TLS1_SET_RAW_SIGALGS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC3(sigalgs, psigs, salglen * sizeof(*sigalgs));

    if (client) {
        FUNC0(c->client_sigalgs);
        c->client_sigalgs = sigalgs;
        c->client_sigalgslen = salglen;
    } else {
        FUNC0(c->conf_sigalgs);
        c->conf_sigalgs = sigalgs;
        c->conf_sigalgslen = salglen;
    }

    return 1;
}