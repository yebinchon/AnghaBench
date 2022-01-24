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
struct list_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,struct list_node const*,unsigned int,struct list_node const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC2(const char *abortstr,
                     const struct list_node *head,
                     const struct list_node *node,
                     unsigned int count)
{
    if (abortstr) {
        FUNC1(stderr, "%s: prev corrupt in node %p (%u) of %p\n", abortstr,
                node, count, head);
        FUNC0();
    }
    return NULL;
}