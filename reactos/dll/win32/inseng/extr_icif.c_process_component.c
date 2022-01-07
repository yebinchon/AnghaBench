
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inf_section {int dummy; } ;
struct ciffile {int ICifFile_iface; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct cifcomponent {int priority; int current_priority; int platform; int build; int version; int as_aware; int visibleui; int admin; int reboot; int key_uninstall; int key_progress; int key_cancel; int key_success; int size_win; int size_app; int size_extracted; int size_download; int patchid; int locale; int group; int details; int guid; int description; int id; int queue_state; int dependencies; int urls; int * parent; TYPE_1__ ICifComponent_iface; } ;
typedef int HRESULT ;


 int ActionNone ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int add_component_by_priority (struct ciffile*,struct cifcomponent*) ;
 int cifcomponentVtbl ;
 int component_free (struct cifcomponent*) ;
 struct cifcomponent* heap_alloc_zero (int) ;
 int list_init (int *) ;
 int read_dependencies (struct cifcomponent*,struct inf_section*) ;
 int read_platform_entry (struct inf_section*,int *) ;
 int read_urls (struct cifcomponent*,struct inf_section*) ;
 int read_version_entry (struct inf_section*,int *,int *) ;
 int section_get_dword (struct inf_section*,char*,int *,int) ;
 int section_get_dword_field (struct inf_section*,char*,int,int *,int ) ;
 int section_get_str (struct inf_section*,char*,int *,char*) ;
 int strdupA (char const*) ;

__attribute__((used)) static HRESULT process_component(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    struct cifcomponent *component;
    HRESULT hr = E_OUTOFMEMORY;

    component = heap_alloc_zero(sizeof(*component));
    if (!component) return E_OUTOFMEMORY;

    component->ICifComponent_iface.lpVtbl = &cifcomponentVtbl;
    component->parent = &file->ICifFile_iface;

    list_init(&component->urls);
    list_init(&component->dependencies);

    component->queue_state = ActionNone;

    component->id = strdupA(section_name);
    if (!component->id) goto error;

    if (!section_get_str(section, "DisplayName", &component->description, ((void*)0)))
        goto error;
    if (!section_get_str(section, "GUID", &component->guid, ((void*)0)))
        goto error;
    if (!section_get_str(section, "Details", &component->details, ((void*)0)))
        goto error;
    if (!section_get_str(section, "Group", &component->group, ((void*)0)))
        goto error;
    if (!section_get_str(section, "Locale", &component->locale, "en"))
        goto error;
    if (!section_get_str(section, "PatchID", &component->patchid, ((void*)0)))
        goto error;

    if (!section_get_dword_field(section, "Size", 1, &component->size_download, 0))
        goto error;
    if (!section_get_dword_field(section, "Size", 2, &component->size_extracted, 0))
        goto error;
    if (!section_get_dword_field(section, "InstalledSize", 1, &component->size_app, 0))
        goto error;
    if (!section_get_dword_field(section, "InstalledSize", 2, &component->size_win, 0))
        goto error;

    if (!section_get_str(section, "SuccessKey", &component->key_success, ((void*)0)))
        goto error;
    if (!section_get_str(section, "CancelKey", &component->key_cancel, ((void*)0)))
        goto error;
    if (!section_get_str(section, "ProgressKey", &component->key_progress, ((void*)0)))
        goto error;
    if (!section_get_str(section, "UninstallKey", &component->key_uninstall, ((void*)0)))
        goto error;
    if (!section_get_dword(section, "Reboot", &component->reboot, 0))
        goto error;
    if (!section_get_dword(section, "AdminCheck", &component->admin, 0))
        goto error;
    if (!section_get_dword(section, "UIVisible", &component->visibleui, 1))
        goto error;
    if (!section_get_dword(section, "ActiveSetupAware", &component->as_aware, 0))
        goto error;
    if (!section_get_dword(section, "Priority", &component->priority, 0))
        goto error;

    if (!read_version_entry(section, &component->version, &component->build))
        goto error;
    if (!read_platform_entry(section, &component->platform))
        goto error;
    if (!read_urls(component, section))
        goto error;
    if (!read_dependencies(component, section))
        goto error;

    component->current_priority = component->priority;

    add_component_by_priority(file, component);
    return S_OK;

error:
    component_free(component);
    return hr;
}
