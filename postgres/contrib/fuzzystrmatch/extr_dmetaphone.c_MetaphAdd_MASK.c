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
struct TYPE_4__ {int length; int bufsize; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ metastring ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(metastring *s, const char *new_str)
{
	int			add_length;

	if (new_str == NULL)
		return;

	add_length = FUNC2(new_str);
	if ((s->length + add_length) > (s->bufsize - 1))
		FUNC0(s, add_length);

	FUNC1(s->str, new_str);
	s->length += add_length;
}