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
struct inf_section {int dummy; } ;
struct inf_file {int dummy; } ;
struct ciffile {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_INSTALLER_DESC ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct inf_file*,struct inf_section**) ; 
 char* FUNC5 (struct inf_section*) ; 
 int /*<<< orphan*/  FUNC6 (struct ciffile*,struct inf_section*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ciffile*,struct inf_section*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC12(struct ciffile *file, struct inf_file *inf)
{
    struct inf_section *section = NULL;
    char *section_name;
    HRESULT hr = S_OK;

    while (FUNC0(hr) && FUNC4(inf, &section))
    {
        section_name = FUNC5(section);
        if (!section_name) return E_OUTOFMEMORY;

        FUNC1("start processing section %s\n", FUNC2(section_name));

        if (!FUNC8(section_name, "Strings") ||
            !FUNC11(section_name, "Strings.", FUNC10("Strings.")))
        {
            /* Ignore string sections */
        }
        else if (FUNC8(section_name, "Version") == 0)
            hr = FUNC7(file, section);
        else
            hr = FUNC6(file, section, section_name);

        FUNC1("finished processing section %s (%x)\n", FUNC2(section_name), hr);
        FUNC3(section_name);
    }

    /* In case there was no version section, set the default installer description */
    if (FUNC0(hr) && !file->name)
    {
        file->name = FUNC9(DEFAULT_INSTALLER_DESC);
        if (!file->name) hr = E_OUTOFMEMORY;
    }

    return hr;
}