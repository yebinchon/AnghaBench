
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
struct ciffile {int name; } ;
typedef int HRESULT ;


 int DEFAULT_INSTALLER_DESC ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int section_get_str (struct inf_section*,char*,int *,int ) ;

__attribute__((used)) static HRESULT process_version(struct ciffile *file, struct inf_section *section)
{
    if (!section_get_str(section, "DisplayName", &file->name, DEFAULT_INSTALLER_DESC))
        return E_OUTOFMEMORY;

    return S_OK;
}
