#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  sem ;
struct TYPE_5__ {int /*<<< orphan*/  res; int /*<<< orphan*/  object_field_start; int /*<<< orphan*/  scalar; int /*<<< orphan*/  array_end; int /*<<< orphan*/  object_end; int /*<<< orphan*/  array_start; int /*<<< orphan*/  object_start; void* semstate; } ;
typedef  TYPE_1__ JsonbInState ;
typedef  TYPE_1__ JsonSemAction ;
typedef  int /*<<< orphan*/  JsonLexContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jsonb_in_array_end ; 
 int /*<<< orphan*/  jsonb_in_array_start ; 
 int /*<<< orphan*/  jsonb_in_object_end ; 
 int /*<<< orphan*/  jsonb_in_object_field_start ; 
 int /*<<< orphan*/  jsonb_in_object_start ; 
 int /*<<< orphan*/  jsonb_in_scalar ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static inline Datum
FUNC5(char *json, int len)
{
	JsonLexContext *lex;
	JsonbInState state;
	JsonSemAction sem;

	FUNC3(&state, 0, sizeof(state));
	FUNC3(&sem, 0, sizeof(sem));
	lex = FUNC2(json, len, true);

	sem.semstate = (void *) &state;

	sem.object_start = jsonb_in_object_start;
	sem.array_start = jsonb_in_array_start;
	sem.object_end = jsonb_in_object_end;
	sem.array_end = jsonb_in_array_end;
	sem.scalar = jsonb_in_scalar;
	sem.object_field_start = jsonb_in_object_field_start;

	FUNC4(lex, &sem);

	/* after parsing, the item member has the composed jsonb structure */
	FUNC1(FUNC0(state.res));
}