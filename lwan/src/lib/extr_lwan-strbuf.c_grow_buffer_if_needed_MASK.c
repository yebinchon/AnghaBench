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
struct TYPE_2__ {char* buffer; int /*<<< orphan*/  static_buffer; } ;
struct lwan_strbuf {int flags; int used; TYPE_1__ value; } ;

/* Variables and functions */
 int STATIC ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (int) ; 
 char* FUNC3 (size_t const) ; 
 size_t FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*,size_t const) ; 

__attribute__((used)) static bool FUNC7(struct lwan_strbuf *s, size_t size)
{
    if (s->flags & STATIC) {
        const size_t aligned_size = FUNC1(FUNC4(size + 1, s->used));
        if (FUNC0(!aligned_size))
            return false;

        char *buffer = FUNC3(aligned_size);
        if (FUNC0(!buffer))
            return false;

        FUNC5(buffer, s->value.static_buffer, s->used);
        buffer[s->used + 1] = '\0';

        s->flags &= ~STATIC;
        s->value.buffer = buffer;

        return true;
    }

    if (FUNC0(!s->used || FUNC2(s->used) < size)) {
        const size_t aligned_size = FUNC1(size + 1);
        if (FUNC0(!aligned_size))
            return false;

        char *buffer = FUNC6(s->value.buffer, aligned_size);
        if (FUNC0(!buffer))
            return false;
        s->value.buffer = buffer;
    }

    return true;
}