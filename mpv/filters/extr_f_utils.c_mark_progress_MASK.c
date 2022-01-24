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
struct mp_subfilter {int /*<<< orphan*/  in; } ;
struct mp_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*) ; 
 struct mp_filter* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mp_subfilter *sub)
{
    // f == NULL is not really allowed, but at least don't crash.
    struct mp_filter *f = FUNC1(sub->in);
    if (f)
        FUNC0(f);
}