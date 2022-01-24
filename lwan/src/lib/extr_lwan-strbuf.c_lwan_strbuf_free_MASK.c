#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct lwan_strbuf* buffer; } ;
struct lwan_strbuf {int flags; TYPE_1__ value; } ;

/* Variables and functions */
 int DYNAMICALLY_ALLOCATED ; 
 int STATIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_strbuf*) ; 

void FUNC2(struct lwan_strbuf *s)
{
    if (FUNC0(!s))
        return;
    if (!(s->flags & STATIC))
        FUNC1(s->value.buffer);
    if (s->flags & DYNAMICALLY_ALLOCATED)
        FUNC1(s);
}