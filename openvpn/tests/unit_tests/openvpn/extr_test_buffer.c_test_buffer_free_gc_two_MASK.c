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
struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;
struct buffer {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct buffer FUNC0 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void **state)
{
    struct gc_arena gc = FUNC6();
    struct buffer buf1 = FUNC0(1024, &gc);
    struct buffer buf2 = FUNC0(1024, &gc);
    struct buffer buf3 = FUNC0(1024, &gc);

    struct gc_entry *e;

    e = gc.list;

    FUNC2(e + 1, buf3.data);
    FUNC2(e->next + 1, buf2.data);
    FUNC2(e->next->next + 1, buf1.data);

    FUNC4(&buf2, &gc);

    FUNC1(gc.list);

    while (e)
    {
        FUNC3(e + 1, buf2.data);
        e = e->next;
    }

    FUNC5(&gc);
}