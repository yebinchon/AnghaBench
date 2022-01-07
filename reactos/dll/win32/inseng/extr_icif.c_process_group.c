
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inf_section {int dummy; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct cifgroup {int entry; int priority; int description; int id; int * parent; TYPE_1__ ICifGroup_iface; } ;
struct ciffile {int groups; int ICifFile_iface; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int cifgroupVtbl ;
 int group_free (struct cifgroup*) ;
 struct cifgroup* heap_alloc_zero (int) ;
 int list_add_head (int *,int *) ;
 int section_get_dword (struct inf_section*,char*,int *,int ) ;
 int section_get_str (struct inf_section*,char*,int *,int *) ;
 int strdupA (char const*) ;

__attribute__((used)) static HRESULT process_group(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    struct cifgroup *group;
    HRESULT hr = E_OUTOFMEMORY;

    group = heap_alloc_zero(sizeof(*group));
    if (!group) return E_OUTOFMEMORY;

    group->ICifGroup_iface.lpVtbl = &cifgroupVtbl;
    group->parent = &file->ICifFile_iface;

    group->id = strdupA(section_name);
    if (!group->id) goto error;

    if (!section_get_str(section, "DisplayName", &group->description, ((void*)0)))
        goto error;
    if (!section_get_dword(section, "Priority", &group->priority, 0))
        goto error;

    list_add_head(&file->groups, &group->entry);
    return S_OK;

error:
    group_free(group);
    return hr;
}
