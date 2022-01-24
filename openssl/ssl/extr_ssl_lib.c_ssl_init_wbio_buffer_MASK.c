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
struct TYPE_3__ {int /*<<< orphan*/  wbio; int /*<<< orphan*/ * bbio; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  SSL_F_SSL_INIT_WBIO_BUFFER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(SSL *s)
{
    BIO *bbio;

    if (s->bbio != NULL) {
        /* Already buffered. */
        return 1;
    }

    bbio = FUNC2(FUNC0());
    if (bbio == NULL || !FUNC4(bbio, 1)) {
        FUNC1(bbio);
        FUNC5(SSL_F_SSL_INIT_WBIO_BUFFER, ERR_R_BUF_LIB);
        return 0;
    }
    s->bbio = bbio;
    s->wbio = FUNC3(bbio, s->wbio);

    return 1;
}