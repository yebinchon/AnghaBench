#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  c; } ;
struct TYPE_10__ {TYPE_2__ sum; TYPE_2__ offset; TYPE_2__ checksum; } ;
struct TYPE_12__ {TYPE_1__ sess; int /*<<< orphan*/  keyenc; int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__ l_dollar; } ;
typedef  TYPE_2__ OCB_BLOCK ;
typedef  TYPE_3__ OCB128_CONTEXT ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(OCB128_CONTEXT *ctx, unsigned char *tag, size_t len,
                      int write)
{
    OCB_BLOCK tmp;

    if (len > 16 || len < 1) {
        return -1;
    }

    /*
     * Tag = ENCIPHER(K, Checksum_* xor Offset_* xor L_$) xor HASH(K,A)
     */
    FUNC2(&ctx->sess.checksum, &ctx->sess.offset, &tmp);
    FUNC2(&ctx->l_dollar, &tmp, &tmp);
    ctx->encrypt(tmp.c, tmp.c, ctx->keyenc);
    FUNC2(&tmp, &ctx->sess.sum, &tmp);

    if (write) {
        FUNC1(tag, &tmp, len);
        return 1;
    } else {
        return FUNC0(&tmp, tag, len);
    }
}