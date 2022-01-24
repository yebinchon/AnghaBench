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
struct lwan_connection {int dummy; } ;
struct lwan {int /*<<< orphan*/  conns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static void FUNC4(struct lwan *l, size_t max_open_files)
{
    const size_t sz = max_open_files * sizeof(struct lwan_connection);

    l->conns = FUNC1(sz, 64);
    if (FUNC0(!l->conns))
        FUNC2("lwan_alloc_aligned");

    FUNC3(l->conns, 0, sz);
}