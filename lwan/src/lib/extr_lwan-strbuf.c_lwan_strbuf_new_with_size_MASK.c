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
struct lwan_strbuf {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DYNAMICALLY_ALLOCATED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_strbuf*,size_t) ; 
 struct lwan_strbuf* FUNC3 (int) ; 

struct lwan_strbuf *FUNC4(size_t size)
{
    struct lwan_strbuf *s = FUNC3(sizeof(*s));

    if (FUNC0(!FUNC2(s, size))) {
        FUNC1(s);

        return NULL;
    }

    s->flags |= DYNAMICALLY_ALLOCATED;

    return s;
}