#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t id; int /*<<< orphan*/  buf; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ logger_watcher ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watcher_count ; 
 int /*<<< orphan*/ ** watchers ; 

__attribute__((used)) static void FUNC5(logger_watcher *w) {
    FUNC0("LOGGER: Closing dead watcher\n");
    watchers[w->id] = NULL;
    FUNC4(w->c);
    watcher_count--;
    FUNC1(w->buf);
    FUNC2(w);
    FUNC3();
}