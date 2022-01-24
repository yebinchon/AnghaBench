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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  EC_KEY_PRINT_PRIVATE ; 
 int /*<<< orphan*/  EC_KEY_PRINT_PUBLIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

int FUNC2(BIO *bp, const EC_KEY *x, int off)
{
    int private = FUNC0(x) != NULL;

    return FUNC1(bp, x, off,
                private ? EC_KEY_PRINT_PRIVATE : EC_KEY_PRINT_PUBLIC);
}