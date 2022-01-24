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
struct TYPE_6__ {int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; int /*<<< orphan*/  osin_len; int /*<<< orphan*/  osin; int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ DIGESTSIGN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC5(EVP_TEST *t)
{
    DIGESTSIGN_DATA *expected = t->data;
    unsigned char *got = NULL;
    size_t got_len;

    if (!FUNC0(expected->ctx, NULL, &got_len,
                        expected->osin, expected->osin_len)) {
        t->err = "DIGESTSIGN_LENGTH_ERROR";
        goto err;
    }
    if (!FUNC3(got = FUNC2(got_len))) {
        t->err = "MALLOC_FAILURE";
        goto err;
    }
    if (!FUNC0(expected->ctx, got, &got_len,
                        expected->osin, expected->osin_len)) {
        t->err = "DIGESTSIGN_ERROR";
        goto err;
    }
    if (!FUNC4(t, "SIGNATURE_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = NULL;
 err:
    FUNC1(got);
    return 1;
}