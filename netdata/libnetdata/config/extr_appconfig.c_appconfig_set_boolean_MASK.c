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
struct config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config*,char const*,char const*,char*) ; 

int FUNC1(struct config *root, const char *section, const char *name, int value)
{
    char *s;
    if(value) s = "yes";
    else s = "no";

    FUNC0(root, section, name, s);

    return value;
}