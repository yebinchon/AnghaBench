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
struct inf_section {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct cifgroup {int /*<<< orphan*/  entry; int /*<<< orphan*/  priority; int /*<<< orphan*/  description; int /*<<< orphan*/  id; int /*<<< orphan*/ * parent; TYPE_1__ ICifGroup_iface; } ;
struct ciffile {int /*<<< orphan*/  groups; int /*<<< orphan*/  ICifFile_iface; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  cifgroupVtbl ; 
 int /*<<< orphan*/  FUNC0 (struct cifgroup*) ; 
 struct cifgroup* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inf_section*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inf_section*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static HRESULT FUNC6(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    struct cifgroup *group;
    HRESULT hr = E_OUTOFMEMORY;

    group = FUNC1(sizeof(*group));
    if (!group) return E_OUTOFMEMORY;

    group->ICifGroup_iface.lpVtbl = &cifgroupVtbl;
    group->parent = &file->ICifFile_iface;

    group->id = FUNC5(section_name);
    if (!group->id) goto error;

    if (!FUNC4(section, "DisplayName", &group->description, NULL))
        goto error;
    if (!FUNC3(section, "Priority", &group->priority, 0))
        goto error;

    FUNC2(&file->groups, &group->entry);
    return S_OK;

error:
    FUNC0(group);
    return hr;
}