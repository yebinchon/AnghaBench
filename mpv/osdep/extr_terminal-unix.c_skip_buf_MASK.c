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
struct termbuf {unsigned int len; scalar_t__ mods; int /*<<< orphan*/ * b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct termbuf *b, unsigned int count)
{
    FUNC0(count <= b->len);

    FUNC1(&b->b[0], &b->b[count], b->len - count);
    b->len -= count;
    b->mods = 0;
}