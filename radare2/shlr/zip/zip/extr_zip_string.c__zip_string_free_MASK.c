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
struct zip_string {struct zip_string* converted; struct zip_string* raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zip_string*) ; 

void
FUNC1(struct zip_string *s)
{
    if (s == NULL)
	return;

    FUNC0(s->raw);
    FUNC0(s->converted);
    FUNC0(s);
}