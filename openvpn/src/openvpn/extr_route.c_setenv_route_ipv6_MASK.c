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
struct route_ipv6 {int flags; int /*<<< orphan*/  gateway; int /*<<< orphan*/  netbits; int /*<<< orphan*/  network; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int RT_DEFINED ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct env_set *es, const struct route_ipv6 *r6, int i)
{
    struct gc_arena gc = FUNC4();
    if (r6->flags & RT_DEFINED)
    {
        struct buffer name1 = FUNC1( 256, &gc );
        struct buffer val = FUNC1( 256, &gc );
        struct buffer name2 = FUNC1( 256, &gc );

        FUNC2( &name1, "route_ipv6_network_%d", i );
        FUNC2( &val, "%s/%d", FUNC5( r6->network, 0, &gc ),
                    r6->netbits );
        FUNC6( es, FUNC0(&name1), FUNC0(&val) );

        FUNC2( &name2, "route_ipv6_gateway_%d", i );
        FUNC6( es, FUNC0(&name2), FUNC5( r6->gateway, 0, &gc ));
    }
    FUNC3(&gc);
}