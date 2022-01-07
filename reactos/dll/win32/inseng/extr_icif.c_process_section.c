
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
struct ciffile {int dummy; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FIXME (char*,int ) ;
 int debugstr_a (char*) ;
 int heap_free (char*) ;
 int process_component (struct ciffile*,struct inf_section*,char const*) ;
 int process_group (struct ciffile*,struct inf_section*,char const*) ;
 int section_get_str (struct inf_section*,char*,char**,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static HRESULT process_section(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    HRESULT hr;
    char *type;

    if (!section_get_str(section, "SectionType", &type, "Component"))
        return E_OUTOFMEMORY;

    if (!strcasecmp(type, "Component"))
        hr = process_component(file, section, section_name);
    else if (strcasecmp(type, "Group") == 0)
        hr = process_group(file, section, section_name);
    else
        FIXME("Don't know how to process %s\n", debugstr_a(type));

    heap_free(type);
    return hr;
}
