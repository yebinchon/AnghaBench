
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_vendor_selection {int gl_vendor; unsigned int cards_size; TYPE_1__* cards; int description; } ;
typedef enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;
typedef enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;
struct TYPE_2__ {int id; int renderer; } ;


 int FIXME (char*,int,int ) ;
 int PCI_DEVICE_NONE ;
 int TRACE (char*,int ) ;
 int debugstr_a (char const*) ;
 scalar_t__ strstr (char const*,int ) ;

__attribute__((used)) static enum wined3d_pci_device select_card_handler(const struct gl_vendor_selection *table,
        unsigned int table_size, enum wined3d_gl_vendor gl_vendor, const char *gl_renderer)
{
    unsigned int i, j;

    for (i = 0; i < table_size; ++i)
    {
        if (table[i].gl_vendor != gl_vendor)
            continue;

        TRACE("Applying card selector \"%s\".\n", table[i].description);

        for (j = 0; j < table[i].cards_size; ++j)
        {
            if (strstr(gl_renderer, table[i].cards[j].renderer))
                return table[i].cards[j].id;
        }
        return PCI_DEVICE_NONE;
    }
    FIXME("Couldn't find a suitable card selector for GL vendor %04x (using GL_RENDERER %s)\n",
            gl_vendor, debugstr_a(gl_renderer));

    return PCI_DEVICE_NONE;
}
