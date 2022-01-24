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
struct shader_func {char* return_type; char* name; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; int /*<<< orphan*/ * mapping; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct shader_func *sf, char *return_type,
				    char *name)
{
	FUNC0(sf->params);

	sf->return_type = return_type;
	sf->mapping = NULL;
	sf->name = name;
	sf->start = NULL;
	sf->end = NULL;
}