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
struct in_addr {scalar_t__ s_addr; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_addr) ; 
 unsigned int IA_EMPTY_IF_UNDEF ; 
 unsigned int IA_NET_ORDER ; 
 struct buffer FUNC2 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct in_addr) ; 

const char *
FUNC6(in_addr_t addr, unsigned int flags, struct gc_arena *gc)
{
    struct in_addr ia;
    struct buffer out = FUNC2(64, gc);

    if (addr || !(flags & IA_EMPTY_IF_UNDEF))
    {
        FUNC1(ia);
        ia.s_addr = (flags & IA_NET_ORDER) ? addr : FUNC4(addr);

        FUNC3(&out, "%s", FUNC5(ia));
    }
    return FUNC0(&out);
}