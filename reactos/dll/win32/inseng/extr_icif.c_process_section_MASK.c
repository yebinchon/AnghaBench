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
struct ciffile {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ciffile*,struct inf_section*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ciffile*,struct inf_section*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct inf_section*,char*,char**,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static HRESULT FUNC7(struct ciffile *file, struct inf_section *section, const char *section_name)
{
    HRESULT hr;
    char *type;

    if (!FUNC5(section, "SectionType", &type, "Component"))
        return E_OUTOFMEMORY;

    if (!FUNC6(type, "Component"))
        hr = FUNC3(file, section, section_name);
    else if (FUNC6(type, "Group") == 0)
        hr = FUNC4(file, section, section_name);
    else
        FUNC0("Don't know how to process %s\n", FUNC1(type));

    FUNC2(type);
    return hr;
}