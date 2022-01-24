#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_stdout ; 
 int /*<<< orphan*/ * s_ctx ; 
 int /*<<< orphan*/ * s_ctx2 ; 
 int sn_expect ; 

__attribute__((used)) static int FUNC2(SSL *client, SSL *server)
{
    /* just need to see if sn_context is what we expect */
    SSL_CTX* ctx = FUNC1(server);
    if (sn_expect == 0)
        return 0;
    if (sn_expect == 1 && ctx == s_ctx)
        return 0;
    if (sn_expect == 2 && ctx == s_ctx2)
        return 0;
    FUNC0(bio_stdout, "Servername: expected context %d\n", sn_expect);
    if (ctx == s_ctx2)
        FUNC0(bio_stdout, "Servername: context is 2\n");
    else if (ctx == s_ctx)
        FUNC0(bio_stdout, "Servername: context is 1\n");
    else
        FUNC0(bio_stdout, "Servername: context is unknown\n");
    return -1;
}