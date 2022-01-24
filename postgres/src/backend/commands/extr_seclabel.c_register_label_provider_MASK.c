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
typedef  int /*<<< orphan*/  check_object_relabel_type ;
struct TYPE_4__ {int /*<<< orphan*/  hook; int /*<<< orphan*/  provider_name; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ LabelProvider ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  label_provider_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void
FUNC4(const char *provider_name, check_object_relabel_type hook)
{
	LabelProvider *provider;
	MemoryContext oldcxt;

	oldcxt = FUNC0(TopMemoryContext);
	provider = FUNC2(sizeof(LabelProvider));
	provider->provider_name = FUNC3(provider_name);
	provider->hook = hook;
	label_provider_list = FUNC1(label_provider_list, provider);
	FUNC0(oldcxt);
}