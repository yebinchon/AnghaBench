
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
struct inf_file {int dummy; } ;
struct ciffile {int name; } ;
typedef int HRESULT ;


 int DEFAULT_INSTALLER_DESC ;
 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int ,...) ;
 int debugstr_a (char*) ;
 int heap_free (char*) ;
 scalar_t__ inf_next_section (struct inf_file*,struct inf_section**) ;
 char* inf_section_get_name (struct inf_section*) ;
 int process_section (struct ciffile*,struct inf_section*,char*) ;
 int process_version (struct ciffile*,struct inf_section*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strdupA (int ) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int ) ;

__attribute__((used)) static HRESULT process_inf(struct ciffile *file, struct inf_file *inf)
{
    struct inf_section *section = ((void*)0);
    char *section_name;
    HRESULT hr = S_OK;

    while (SUCCEEDED(hr) && inf_next_section(inf, &section))
    {
        section_name = inf_section_get_name(section);
        if (!section_name) return E_OUTOFMEMORY;

        TRACE("start processing section %s\n", debugstr_a(section_name));

        if (!strcasecmp(section_name, "Strings") ||
            !strncasecmp(section_name, "Strings.", strlen("Strings.")))
        {

        }
        else if (strcasecmp(section_name, "Version") == 0)
            hr = process_version(file, section);
        else
            hr = process_section(file, section, section_name);

        TRACE("finished processing section %s (%x)\n", debugstr_a(section_name), hr);
        heap_free(section_name);
    }


    if (SUCCEEDED(hr) && !file->name)
    {
        file->name = strdupA(DEFAULT_INSTALLER_DESC);
        if (!file->name) hr = E_OUTOFMEMORY;
    }

    return hr;
}
