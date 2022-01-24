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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  SSL_SERVERINFOV1 ; 

int FUNC1(SSL_CTX *ctx, const unsigned char *serverinfo,
                           size_t serverinfo_length)
{
    return FUNC0(ctx, SSL_SERVERINFOV1, serverinfo,
                                     serverinfo_length);
}