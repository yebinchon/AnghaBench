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
 int BIO_RR_CONNECT ; 
 int BIO_RR_SSL_X509_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  SSL_ERROR_NONE 134 
#define  SSL_ERROR_SSL 133 
#define  SSL_ERROR_SYSCALL 132 
#define  SSL_ERROR_WANT_CONNECT 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_WANT_X509_LOOKUP 128 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,size_t,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(BIO *b, const char *buf, size_t size, size_t *written)
{
    int ret, r = 0;
    int retry_reason = 0;
    SSL *ssl;
    BIO_SSL *bs;

    if (buf == NULL)
        return 0;
    bs = FUNC1(b);
    ssl = bs->ssl;

    FUNC0(b);

    ret = FUNC8(ssl, buf, size, written);

    switch (FUNC6(ssl, ret)) {
    case SSL_ERROR_NONE:
        if (bs->renegotiate_count > 0) {
            bs->byte_count += *written;
            if (bs->byte_count > bs->renegotiate_count) {
                bs->byte_count = 0;
                bs->num_renegotiates++;
                FUNC7(ssl);
                r = 1;
            }
        }
        if ((bs->renegotiate_timeout > 0) && (!r)) {
            unsigned long tm;

            tm = (unsigned long)FUNC9(NULL);
            if (tm > bs->last_time + bs->renegotiate_timeout) {
                bs->last_time = tm;
                bs->num_renegotiates++;
                FUNC7(ssl);
            }
        }
        break;
    case SSL_ERROR_WANT_WRITE:
        FUNC5(b);
        break;
    case SSL_ERROR_WANT_READ:
        FUNC2(b);
        break;
    case SSL_ERROR_WANT_X509_LOOKUP:
        FUNC4(b);
        retry_reason = BIO_RR_SSL_X509_LOOKUP;
        break;
    case SSL_ERROR_WANT_CONNECT:
        FUNC4(b);
        retry_reason = BIO_RR_CONNECT;
    case SSL_ERROR_SYSCALL:
    case SSL_ERROR_SSL:
    default:
        break;
    }

    FUNC3(b, retry_reason);

    return ret;
}