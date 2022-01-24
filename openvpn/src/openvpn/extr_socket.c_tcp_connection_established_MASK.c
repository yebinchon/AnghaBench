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
struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct link_socket_actual const*,struct gc_arena*) ; 

__attribute__((used)) static void
FUNC4(const struct link_socket_actual *act)
{
    struct gc_arena gc = FUNC1();
    FUNC2(M_INFO, "TCP connection established with %s",
        FUNC3(act, &gc));
    FUNC0(&gc);
}