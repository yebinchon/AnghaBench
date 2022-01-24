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
struct lwan_url_map {char* prefix; int /*<<< orphan*/  handler; } ;
struct lwan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hello_world ; 
 int /*<<< orphan*/  FUNC1 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan*,struct lwan_url_map const*) ; 
 int /*<<< orphan*/  FUNC4 (struct lwan*) ; 

int
FUNC5(void)
{
    const struct lwan_url_map default_map[] = {
        { .prefix = "/", .handler = FUNC0(hello_world) },
        { .prefix = NULL }
    };
    struct lwan l;

    FUNC1(&l);

    FUNC3(&l, default_map);
    FUNC2(&l);

    FUNC4(&l);

    return 0;
}