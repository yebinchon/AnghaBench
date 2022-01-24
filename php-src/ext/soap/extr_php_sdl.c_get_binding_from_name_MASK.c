#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;
typedef  TYPE_2__* sdlPtr ;
typedef  int /*<<< orphan*/  sdlBindingPtr ;
struct TYPE_9__ {int /*<<< orphan*/  bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sdlBindingPtr FUNC5(sdlPtr sdl, char *name, char *ns)
{
	sdlBindingPtr binding;
	smart_str key = {0};

	FUNC2(&key, ns);
	FUNC1(&key, ':');
	FUNC2(&key, name);
	FUNC0(&key);

	binding = FUNC4(sdl->bindings, key.s);

	FUNC3(&key);
	return binding;
}