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
struct key_source {scalar_t__ random2; scalar_t__ random1; scalar_t__ pre_master; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_KEY_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 

__attribute__((used)) static void
FUNC5(const struct key_source *k,
                 const char *prefix)
{
    struct gc_arena gc = FUNC4();

    FUNC0((void *)k->pre_master, sizeof(k->pre_master));
    FUNC0((void *)k->random1, sizeof(k->random1));
    FUNC0((void *)k->random2, sizeof(k->random2));

    FUNC1(D_SHOW_KEY_SOURCE,
         "%s pre_master: %s",
         prefix,
         FUNC2(k->pre_master, sizeof(k->pre_master), 0, &gc));
    FUNC1(D_SHOW_KEY_SOURCE,
         "%s random1: %s",
         prefix,
         FUNC2(k->random1, sizeof(k->random1), 0, &gc));
    FUNC1(D_SHOW_KEY_SOURCE,
         "%s random2: %s",
         prefix,
         FUNC2(k->random2, sizeof(k->random2), 0, &gc));

    FUNC3(&gc);
}