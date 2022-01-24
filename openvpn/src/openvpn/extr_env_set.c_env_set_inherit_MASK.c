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
struct env_set {struct env_item* list; } ;
struct env_item {struct env_item* next; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct env_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct env_set*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct env_set *es, const struct env_set *src)
{
    const struct env_item *e;

    FUNC0(es);

    if (src)
    {
        e = src->list;
        while (e)
        {
            FUNC1(es, e->string);
            e = e->next;
        }
    }
}