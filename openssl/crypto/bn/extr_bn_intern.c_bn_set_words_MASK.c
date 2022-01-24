#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int top; int /*<<< orphan*/  d; } ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_SET_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

int FUNC4(BIGNUM *a, const BN_ULONG *words, int num_words)
{
    if (FUNC2(a, num_words) == NULL) {
        FUNC0(BN_F_BN_SET_WORDS, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC3(a->d, words, sizeof(BN_ULONG) * num_words);
    a->top = num_words;
    FUNC1(a);
    return 1;
}