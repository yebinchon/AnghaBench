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
struct TYPE_3__ {size_t renegotiate_count; size_t byte_count; unsigned long renegotiate_timeout; unsigned long last_time; int /*<<< orphan*/  num_renegotiates; int /*<<< orphan*/ * ssl; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ BIO_SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_RR_ACCEPT ; 
 int BIO_RR_CONNECT ; 
 int BIO_RR_SSL_X509_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  SSL_ERROR_NONE 136 
#define  SSL_ERROR_SSL 135 
#define  SSL_ERROR_SYSCALL 134 
#define  SSL_ERROR_WANT_ACCEPT 133 
#define  SSL_ERROR_WANT_CONNECT 132 
#define  SSL_ERROR_WANT_READ 131 
#define  SSL_ERROR_WANT_WRITE 130 
#define  SSL_ERROR_WANT_X509_LOOKUP 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,size_t,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(BIO *b, char *buf, size_t size, size_t *readbytes)
{
    int ret = 1;
    BIO_SSL *sb;
    SSL *ssl;
    int retry_reason = 0;
    int r = 0;

    if (buf == NULL)
        return 0;
    sb = FUNC1(b);
    ssl = sb->ssl;

    FUNC0(b);

    ret = FUNC8(ssl, buf, size, readbytes);

    switch (FUNC6(ssl, ret)) {
    case SSL_ERROR_NONE:
        if (sb->renegotiate_count > 0) {
            sb->byte_count += *readbytes;
            if (sb->byte_count > sb->renegotiate_count) {
                sb->byte_count = 0;
                sb->num_renegotiates++;
                FUNC7(ssl);
                r = 1;
            }
        }
        if ((sb->renegotiate_timeout > 0) && (!r)) {
            unsigned long tm;

            tm = (unsigned long)FUNC9(NULL);
            if (tm > sb->last_time + sb->renegotiate_timeout) {
                sb->last_time = tm;
                sb->num_renegotiates++;
                FUNC7(ssl);
            }
        }

        break;
    case SSL_ERROR_WANT_READ:
        FUNC2(b);
        break;
    case SSL_ERROR_WANT_WRITE:
        FUNC5(b);
        break;
    case SSL_ERROR_WANT_X509_LOOKUP:
        FUNC4(b);
        retry_reason = BIO_RR_SSL_X509_LOOKUP;
        break;
    case SSL_ERROR_WANT_ACCEPT:
        FUNC4(b);
        retry_reason = BIO_RR_ACCEPT;
        break;
    case SSL_ERROR_WANT_CONNECT:
        FUNC4(b);
        retry_reason = BIO_RR_CONNECT;
        break;
    case SSL_ERROR_SYSCALL:
    case SSL_ERROR_SSL:
    case SSL_ERROR_ZERO_RETURN:
    default:
        break;
    }

    FUNC3(b, retry_reason);

    return ret;
}