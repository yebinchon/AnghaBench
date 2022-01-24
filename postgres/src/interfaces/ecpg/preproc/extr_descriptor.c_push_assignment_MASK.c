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
struct assignment {int value; scalar_t__ variable; struct assignment* next; } ;
typedef  enum ECPGdtype { ____Placeholder_ECPGdtype } ECPGdtype ;

/* Variables and functions */
 struct assignment* assignments ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int FUNC2 (char*) ; 

void
FUNC3(char *var, enum ECPGdtype value)
{
	struct assignment *new = (struct assignment *) FUNC0(sizeof(struct assignment));

	new->next = assignments;
	new->variable = FUNC0(FUNC2(var) + 1);
	FUNC1(new->variable, var);
	new->value = value;
	assignments = new;
}