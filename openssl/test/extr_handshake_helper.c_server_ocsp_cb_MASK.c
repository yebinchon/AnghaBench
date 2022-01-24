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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned char* FUNC0 (int) ; 
 int SSL_TLSEXT_ERR_ALERT_FATAL ; 
 int SSL_TLSEXT_ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(SSL *s, void *arg)
{
    unsigned char *resp;

    resp = FUNC0(1);
    if (resp == NULL)
        return SSL_TLSEXT_ERR_ALERT_FATAL;
    /*
     * For the purposes of testing we just send back a dummy OCSP response
     */
    *resp = *(unsigned char *)arg;
    if (!FUNC1(s, resp, 1))
        return SSL_TLSEXT_ERR_ALERT_FATAL;

    return SSL_TLSEXT_ERR_OK;
}