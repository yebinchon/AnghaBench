#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tok; scalar_t__ cur; } ;
typedef  TYPE_1__ Scanner ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 char* FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static char *FUNC2(Scanner *s)
{
	char *tmp = FUNC1(1, s->cur - s->tok + 1);
	FUNC0(tmp, s->tok, s->cur - s->tok);

	return tmp;
}