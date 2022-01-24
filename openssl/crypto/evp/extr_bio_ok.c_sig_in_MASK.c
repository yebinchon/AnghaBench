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
struct TYPE_3__ {size_t buf_len; size_t buf_off; scalar_t__ cont; int /*<<< orphan*/ * buf; scalar_t__ sigio; int /*<<< orphan*/ * md; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_1__ BIO_OK_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  WELLKNOWN ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(BIO *b)
{
    BIO_OK_CTX *ctx;
    EVP_MD_CTX *md;
    unsigned char tmp[EVP_MAX_MD_SIZE];
    int ret = 0;
    const EVP_MD *digest;
    int md_size;
    void *md_data;

    ctx = FUNC1(b);
    md = ctx->md;
    digest = FUNC5(md);
    md_size = FUNC7(digest);
    md_data = FUNC6(md);

    if ((int)(ctx->buf_len - ctx->buf_off) < 2 * md_size)
        return 1;

    if (!FUNC3(md, digest, NULL))
        goto berr;
    FUNC10(md_data, &(ctx->buf[ctx->buf_off]), md_size);
    FUNC8(md_data, md_size);
    ctx->buf_off += md_size;

    if (!FUNC4(md, WELLKNOWN, FUNC12(WELLKNOWN)))
        goto berr;
    if (!FUNC2(md, tmp, NULL))
        goto berr;
    ret = FUNC9(&(ctx->buf[ctx->buf_off]), tmp, md_size) == 0;
    ctx->buf_off += md_size;
    if (ret == 1) {
        ctx->sigio = 0;
        if (ctx->buf_len != ctx->buf_off) {
            FUNC11(ctx->buf, &(ctx->buf[ctx->buf_off]),
                    ctx->buf_len - ctx->buf_off);
        }
        ctx->buf_len -= ctx->buf_off;
        ctx->buf_off = 0;
    } else {
        ctx->cont = 0;
    }
    return 1;
 berr:
    FUNC0(b);
    return 0;
}