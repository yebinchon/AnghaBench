#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* err; TYPE_1__* data; } ;
struct TYPE_5__ {size_t output_len; int /*<<< orphan*/  output; int /*<<< orphan*/  ctx; int /*<<< orphan*/  params; } ;
typedef  TYPE_1__ KDF_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,size_t,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC6(EVP_TEST *t)
{
    KDF_DATA *expected = t->data;
    unsigned char *got = NULL;
    size_t got_len = expected->output_len;

    if (!FUNC0(expected->ctx, expected->params)) {
        t->err = "KDF_CTRL_ERROR";
        return 1;
    }
    if (!FUNC4(got = FUNC3(got_len))) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (FUNC1(expected->ctx, got, got_len) <= 0) {
        t->err = "KDF_DERIVE_ERROR";
        goto err;
    }
    if (!FUNC5(t, "KDF_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = NULL;

 err:
    FUNC2(got);
    return 1;
}