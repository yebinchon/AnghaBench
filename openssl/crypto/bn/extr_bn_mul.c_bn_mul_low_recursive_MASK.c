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
typedef  int /*<<< orphan*/  BN_ULONG ;

/* Variables and functions */
 int BN_MUL_LOW_RECURSIVE_SIZE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(BN_ULONG *r, BN_ULONG *a, BN_ULONG *b, int n2,
                          BN_ULONG *t)
{
    int n = n2 / 2;

    FUNC2(r, a, b, n, 0, 0, &(t[0]));
    if (n >= BN_MUL_LOW_RECURSIVE_SIZE_NORMAL) {
        FUNC3(&(t[0]), &(a[0]), &(b[n]), n, &(t[n2]));
        FUNC0(&(r[n]), &(r[n]), &(t[0]), n);
        FUNC3(&(t[0]), &(a[n]), &(b[0]), n, &(t[n2]));
        FUNC0(&(r[n]), &(r[n]), &(t[0]), n);
    } else {
        FUNC1(&(t[0]), &(a[0]), &(b[n]), n);
        FUNC1(&(t[n]), &(a[n]), &(b[0]), n);
        FUNC0(&(r[n]), &(r[n]), &(t[0]), n);
        FUNC0(&(r[n]), &(r[n]), &(t[n]), n);
    }
}