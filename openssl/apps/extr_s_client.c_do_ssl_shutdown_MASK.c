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
#define  SSL_ERROR_WANT_ASYNC 131 
#define  SSL_ERROR_WANT_ASYNC_JOB 130 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(SSL *ssl)
{
    int ret;

    do {
        /* We only do unidirectional shutdown */
        ret = FUNC1(ssl);
        if (ret < 0) {
            switch (FUNC0(ssl, ret)) {
            case SSL_ERROR_WANT_READ:
            case SSL_ERROR_WANT_WRITE:
            case SSL_ERROR_WANT_ASYNC:
            case SSL_ERROR_WANT_ASYNC_JOB:
                /* We just do busy waiting. Nothing clever */
                continue;
            }
            ret = 0;
        }
    } while (ret < 0);
}