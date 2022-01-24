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
struct options {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct options *options)
{
    if (!options->dev && options->dev_node)
    {
        char *dev_node = FUNC1(options->dev_node, NULL); /* POSIX basename() implementations may modify its arguments */
        options->dev = FUNC0(dev_node);
    }
}