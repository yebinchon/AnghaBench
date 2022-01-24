#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cipher; } ;
struct TYPE_4__ {TYPE_1__ encrypt; } ;
struct crypto_options {TYPE_2__ key_ctx_bi; } ;
struct buffer {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  cipher_kt_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,struct buffer,struct crypto_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,struct buffer,struct crypto_options*) ; 

void
FUNC4(struct buffer *buf, struct buffer work,
                struct crypto_options *opt)
{
    if (buf->len > 0 && opt)
    {
        const cipher_kt_t *cipher_kt =
            FUNC0(opt->key_ctx_bi.encrypt.cipher);

        if (FUNC1(cipher_kt))
        {
            FUNC2(buf, work, opt);
        }
        else
        {
            FUNC3(buf, work, opt);
        }
    }
}