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
 int SSL_AD_UNRECOGNIZED_NAME ; 
 int SSL_CLIENT_HELLO_ERROR ; 
 int SSL_CLIENT_HELLO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC1(SSL *s, int *al, void *arg)
{
    if (!FUNC0(s, arg, 1)) {
        *al = SSL_AD_UNRECOGNIZED_NAME;
        return SSL_CLIENT_HELLO_ERROR;
    }
    return SSL_CLIENT_HELLO_SUCCESS;
}