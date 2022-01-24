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
struct gl_vendor_selection {int gl_vendor; unsigned int cards_size; TYPE_1__* cards; int /*<<< orphan*/  description; } ;
typedef  enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;
typedef  enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;
struct TYPE_2__ {int id; int /*<<< orphan*/  renderer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int PCI_DEVICE_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wined3d_pci_device FUNC4(const struct gl_vendor_selection *table,
        unsigned int table_size, enum wined3d_gl_vendor gl_vendor, const char *gl_renderer)
{
    unsigned int i, j;

    for (i = 0; i < table_size; ++i)
    {
        if (table[i].gl_vendor != gl_vendor)
            continue;

        FUNC1("Applying card selector \"%s\".\n", table[i].description);

        for (j = 0; j < table[i].cards_size; ++j)
        {
            if (FUNC3(gl_renderer, table[i].cards[j].renderer))
                return table[i].cards[j].id;
        }
        return PCI_DEVICE_NONE;
    }
    FUNC0("Couldn't find a suitable card selector for GL vendor %04x (using GL_RENDERER %s)\n",
            gl_vendor, FUNC2(gl_renderer));

    return PCI_DEVICE_NONE;
}