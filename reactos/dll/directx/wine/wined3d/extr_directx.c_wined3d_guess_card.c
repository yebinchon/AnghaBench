
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct shader_caps {int dummy; } ;
struct fragment_caps {int dummy; } ;
typedef enum wined3d_pci_vendor { ____Placeholder_wined3d_pci_vendor } wined3d_pci_vendor ;
typedef enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;
typedef enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;
typedef enum wined3d_d3d_level { ____Placeholder_wined3d_d3d_level } wined3d_d3d_level ;
struct TYPE_3__ {int card_vendor; int* card_fallback; int gl_vendor_count; int gl_vendor_selection; int description; } ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int FIXME (char*,int,int ) ;
 int HW_VENDOR_NVIDIA ;
 int PCI_DEVICE_NONE ;
 int TRACE (char*,int ) ;
 int* card_fallback_nvidia ;
 TYPE_1__* card_vendor_table ;
 int d3d_level_from_caps (struct shader_caps const*,struct fragment_caps const*,int ) ;
 int debugstr_a (char const*) ;
 int select_card_handler (int ,int ,int,char const*) ;

__attribute__((used)) static enum wined3d_pci_device wined3d_guess_card(const struct shader_caps *shader_caps, const struct fragment_caps *fragment_caps,
        DWORD glsl_version, const char *gl_renderer, enum wined3d_gl_vendor *gl_vendor, enum wined3d_pci_vendor *card_vendor)
{
    unsigned int i;
    enum wined3d_d3d_level d3d_level = d3d_level_from_caps(shader_caps, fragment_caps, glsl_version);
    enum wined3d_pci_device device;

    for (i = 0; i < ARRAY_SIZE(card_vendor_table); ++i)
    {
        if (card_vendor_table[i].card_vendor != *card_vendor)
            continue;

        TRACE("Applying card selector \"%s\".\n", card_vendor_table[i].description);
        device = select_card_handler(card_vendor_table[i].gl_vendor_selection,
                card_vendor_table[i].gl_vendor_count, *gl_vendor, gl_renderer);
        if (device != PCI_DEVICE_NONE)
            return device;

        TRACE("Unrecognized renderer %s, falling back to default.\n", debugstr_a(gl_renderer));
        return card_vendor_table[i].card_fallback[d3d_level];
    }

    FIXME("No card selector available for card vendor %04x (using GL_RENDERER %s).\n",
            *card_vendor, debugstr_a(gl_renderer));


    *card_vendor = HW_VENDOR_NVIDIA;
    return card_fallback_nvidia[d3d_level];
}
