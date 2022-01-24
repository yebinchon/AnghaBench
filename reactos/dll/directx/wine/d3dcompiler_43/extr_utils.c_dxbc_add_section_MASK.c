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
struct dxbc_section {int tag; int data_size; char const* data; } ;
struct dxbc {size_t count; size_t size; struct dxbc_section* sections; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dxbc_section* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dxbc_section*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dxbc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 

HRESULT FUNC5(struct dxbc *dxbc, DWORD tag, const char *data, DWORD data_size)
{
    FUNC3("dxbc %p, tag %s, size %#x.\n", dxbc, FUNC4((const char *)&tag, 4), data_size);

    if (dxbc->count >= dxbc->size)
    {
        struct dxbc_section *new_sections;
        DWORD new_size = dxbc->size << 1;

        new_sections = FUNC2(FUNC1(), 0, dxbc->sections, new_size * sizeof(*dxbc->sections));
        if (!new_sections)
        {
            FUNC0("Failed to allocate dxbc section memory\n");
            return E_OUTOFMEMORY;
        }

        dxbc->sections = new_sections;
        dxbc->size = new_size;
    }

    dxbc->sections[dxbc->count].tag = tag;
    dxbc->sections[dxbc->count].data_size = data_size;
    dxbc->sections[dxbc->count].data = data;
    ++dxbc->count;

    return S_OK;
}