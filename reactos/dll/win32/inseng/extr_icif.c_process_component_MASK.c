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
struct ciffile {int /*<<< orphan*/  ICifFile_iface; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct cifcomponent {int /*<<< orphan*/  priority; int /*<<< orphan*/  current_priority; int /*<<< orphan*/  platform; int /*<<< orphan*/  build; int /*<<< orphan*/  version; int /*<<< orphan*/  as_aware; int /*<<< orphan*/  visibleui; int /*<<< orphan*/  admin; int /*<<< orphan*/  reboot; int /*<<< orphan*/  key_uninstall; int /*<<< orphan*/  key_progress; int /*<<< orphan*/  key_cancel; int /*<<< orphan*/  key_success; int /*<<< orphan*/  size_win; int /*<<< orphan*/  size_app; int /*<<< orphan*/  size_extracted; int /*<<< orphan*/  size_download; int /*<<< orphan*/  patchid; int /*<<< orphan*/  locale; int /*<<< orphan*/  group; int /*<<< orphan*/  details; int /*<<< orphan*/  guid; int /*<<< orphan*/  description; int /*<<< orphan*/  id; int /*<<< orphan*/  queue_state; int /*<<< orphan*/  dependencies; int /*<<< orphan*/  urls; int /*<<< orphan*/ * parent; TYPE_1__ ICifComponent_iface; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActionNone ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ciffile*,struct cifcomponent*) ; 
 int /*<<< orphan*/  cifcomponentVtbl ; 
 int /*<<< orphan*/  FUNC1 (struct cifcomponent*) ; 
 struct cifcomponent* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cifcomponent*,struct inf_section*) ; 
 int /*<<< orphan*/  FUNC5 (struct inf_section*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cifcomponent*,struct inf_section*) ; 
 int /*<<< orphan*/  FUNC7 (struct inf_section*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inf_section*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inf_section*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inf_section*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static HRESULT FUNC12(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    struct cifcomponent *component;
    HRESULT hr = E_OUTOFMEMORY;

    component = FUNC2(sizeof(*component));
    if (!component) return E_OUTOFMEMORY;

    component->ICifComponent_iface.lpVtbl = &cifcomponentVtbl;
    component->parent = &file->ICifFile_iface;

    FUNC3(&component->urls);
    FUNC3(&component->dependencies);

    component->queue_state = ActionNone;

    component->id = FUNC11(section_name);
    if (!component->id) goto error;

    if (!FUNC10(section, "DisplayName", &component->description, NULL))
        goto error;
    if (!FUNC10(section, "GUID", &component->guid, NULL))
        goto error;
    if (!FUNC10(section, "Details", &component->details, NULL))
        goto error;
    if (!FUNC10(section, "Group", &component->group, NULL))
        goto error;
    if (!FUNC10(section, "Locale", &component->locale, "en"))
        goto error;
    if (!FUNC10(section, "PatchID", &component->patchid, NULL))
        goto error;

    if (!FUNC9(section, "Size", 1, &component->size_download, 0))
        goto error;
    if (!FUNC9(section, "Size", 2, &component->size_extracted, 0))
        goto error;
    if (!FUNC9(section, "InstalledSize", 1, &component->size_app, 0))
        goto error;
    if (!FUNC9(section, "InstalledSize", 2, &component->size_win, 0))
        goto error;

    if (!FUNC10(section, "SuccessKey", &component->key_success, NULL))
        goto error;
    if (!FUNC10(section, "CancelKey", &component->key_cancel, NULL))
        goto error;
    if (!FUNC10(section, "ProgressKey", &component->key_progress, NULL))
        goto error;
    if (!FUNC10(section, "UninstallKey", &component->key_uninstall, NULL))
        goto error;
    if (!FUNC8(section, "Reboot", &component->reboot, 0))
        goto error;
    if (!FUNC8(section, "AdminCheck", &component->admin, 0))
        goto error;
    if (!FUNC8(section, "UIVisible", &component->visibleui, 1))
        goto error;
    if (!FUNC8(section, "ActiveSetupAware", &component->as_aware, 0))
        goto error;
    if (!FUNC8(section, "Priority", &component->priority, 0))
        goto error;

    if (!FUNC7(section, &component->version, &component->build))
        goto error;
    if (!FUNC5(section, &component->platform))
        goto error;
    if (!FUNC6(component, section))
        goto error;
    if (!FUNC4(component, section))
        goto error;

    component->current_priority = component->priority;

    FUNC0(file, component);
    return S_OK;

error:
    FUNC1(component);
    return hr;
}