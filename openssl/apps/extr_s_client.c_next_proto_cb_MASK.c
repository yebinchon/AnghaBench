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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ tlsextnextprotoctx ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int SSL_TLSEXT_ERR_OK ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,unsigned char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_c_out ; 
 int /*<<< orphan*/  c_quiet ; 

__attribute__((used)) static int FUNC3(SSL *s, unsigned char **out, unsigned char *outlen,
                         const unsigned char *in, unsigned int inlen,
                         void *arg)
{
    tlsextnextprotoctx *ctx = arg;

    if (!c_quiet) {
        /* We can assume that |in| is syntactically valid. */
        unsigned i;
        FUNC0(bio_c_out, "Protocols advertised by server: ");
        for (i = 0; i < inlen;) {
            if (i)
                FUNC1(bio_c_out, ", ", 2);
            FUNC1(bio_c_out, &in[i + 1], in[i]);
            i += in[i] + 1;
        }
        FUNC1(bio_c_out, "\n", 1);
    }

    ctx->status =
        FUNC2(out, outlen, in, inlen, ctx->data, ctx->len);
    return SSL_TLSEXT_ERR_OK;
}