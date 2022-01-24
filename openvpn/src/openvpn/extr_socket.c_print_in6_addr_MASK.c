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
typedef  int /*<<< orphan*/  tmp_out_buf ;
struct in6_addr {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  a6 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 char const* FUNC0 (struct buffer*) ; 
 unsigned int IA_EMPTY_IF_UNDEF ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct in6_addr*,char*,int) ; 
 scalar_t__ FUNC4 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 

const char *
FUNC5(struct in6_addr a6, unsigned int flags, struct gc_arena *gc)
{
    struct buffer out = FUNC1(64, gc);
    char tmp_out_buf[64];       /* inet_ntop wants pointer to buffer */

    if (FUNC4(&a6, &in6addr_any, sizeof(a6)) != 0
        || !(flags & IA_EMPTY_IF_UNDEF))
    {
        FUNC3(AF_INET6, &a6, tmp_out_buf, sizeof(tmp_out_buf)-1);
        FUNC2(&out, "%s", tmp_out_buf );
    }
    return FUNC0(&out);
}