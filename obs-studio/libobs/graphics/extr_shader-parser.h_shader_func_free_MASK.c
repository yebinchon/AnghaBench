#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct shader_func {TYPE_1__ params; int /*<<< orphan*/  mapping; int /*<<< orphan*/  return_type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct shader_func *sf)
{
	size_t i;

	for (i = 0; i < sf->params.num; i++)
		FUNC2(sf->params.array + i);

	FUNC0(sf->name);
	FUNC0(sf->return_type);
	FUNC0(sf->mapping);
	FUNC1(sf->params);
}