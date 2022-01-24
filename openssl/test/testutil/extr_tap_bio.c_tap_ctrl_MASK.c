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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_RESET 128 
 long FUNC0 (int /*<<< orphan*/ *,int,long,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(BIO *b, int cmd, long num, void *ptr)
{
    BIO *next = FUNC1(b);

    switch (cmd) {
    case BIO_CTRL_RESET:
        FUNC2(b, NULL);
        break;

    default:
        break;
    }
    return FUNC0(next, cmd, num, ptr);
}