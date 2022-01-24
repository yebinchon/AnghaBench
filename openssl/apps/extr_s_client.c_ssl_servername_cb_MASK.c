#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ack; } ;
typedef  TYPE_1__ tlsextctx ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SSL_TLSEXT_ERR_OK ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC4(SSL *s, int *ad, void *arg)
{
    tlsextctx *p = (tlsextctx *) arg;
    const char *hn = FUNC1(s, TLSEXT_NAMETYPE_host_name);
    if (FUNC2(s) != -1)
        p->ack = !FUNC3(s) && hn != NULL;
    else
        FUNC0(bio_err, "Can't use SSL_get_servername\n");

    return SSL_TLSEXT_ERR_OK;
}