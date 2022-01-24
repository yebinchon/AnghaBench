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
struct gc_arena {scalar_t__ list; } ;
struct buffer {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct buffer FUNC0 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (struct gc_arena*) ; 
 struct gc_arena FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void **state)
{
    struct gc_arena gc = FUNC5();
    struct buffer buf = FUNC0(1024, &gc);

    FUNC2(gc.list + 1, buf.data);
    FUNC3(&buf, &gc);
    FUNC1(gc.list);

    FUNC4(&gc);
}