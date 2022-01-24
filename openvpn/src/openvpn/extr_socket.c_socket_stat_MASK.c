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
struct link_socket {unsigned int rwflags_debug; int /*<<< orphan*/  writes; int /*<<< orphan*/  reads; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 unsigned int EVENT_READ ; 
 unsigned int EVENT_WRITE ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

const char *
FUNC4(const struct link_socket *s, unsigned int rwflags, struct gc_arena *gc)
{
    struct buffer out = FUNC1(64, gc);
    if (s)
    {
        if (rwflags & EVENT_READ)
        {
            FUNC2(&out, "S%s",
                       (s->rwflags_debug & EVENT_READ) ? "R" : "r");
#ifdef _WIN32
            buf_printf(&out, "%s",
                       overlapped_io_state_ascii(&s->reads));
#endif
        }
        if (rwflags & EVENT_WRITE)
        {
            FUNC2(&out, "S%s",
                       (s->rwflags_debug & EVENT_WRITE) ? "W" : "w");
#ifdef _WIN32
            buf_printf(&out, "%s",
                       overlapped_io_state_ascii(&s->writes));
#endif
        }
    }
    else
    {
        FUNC2(&out, "S?");
    }
    return FUNC0(&out);
}