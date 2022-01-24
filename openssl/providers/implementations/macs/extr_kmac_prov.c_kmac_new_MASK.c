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
struct kmac_data_st {void* provctx; int /*<<< orphan*/ * ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 struct kmac_data_st* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kmac_data_st*) ; 

__attribute__((used)) static struct kmac_data_st *FUNC3(void *provctx)
{
    struct kmac_data_st *kctx;

    if ((kctx = FUNC1(sizeof(*kctx))) == NULL
            || (kctx->ctx = FUNC0()) == NULL) {
        FUNC2(kctx);
        return NULL;
    }
    kctx->provctx = provctx;
    return kctx;
}