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
struct options {int /*<<< orphan*/  ce; struct connection_list* connection_list; } ;
struct connection_list {int len; int /*<<< orphan*/ ** array; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_PARMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(const struct options *o)
{
    if (o->connection_list)
    {
        const struct connection_list *l = o->connection_list;
        int i;
        for (i = 0; i < l->len; ++i)
        {
            FUNC0(D_SHOW_PARMS, "Connection profiles [%d]:", i);
            FUNC1(l->array[i]);
        }
    }
    else
    {
        FUNC0(D_SHOW_PARMS, "Connection profiles [default]:");
        FUNC1(&o->ce);
    }
    FUNC0(D_SHOW_PARMS, "Connection profiles END");
}