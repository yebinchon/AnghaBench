#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_gl_info {int dummy; } ;
struct wined3d_caps_gl_ctx {int dummy; } ;
typedef  enum wined3d_pci_vendor { ____Placeholder_wined3d_pci_vendor } wined3d_pci_vendor ;
typedef  enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;
typedef  enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;
struct TYPE_3__ {int /*<<< orphan*/  (* apply ) (struct wined3d_gl_info*) ;int /*<<< orphan*/  description; int /*<<< orphan*/  (* match ) (struct wined3d_gl_info*,struct wined3d_caps_gl_ctx*,char const*,int,int,int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* quirk_table ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info*,struct wined3d_caps_gl_ctx*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_gl_info*) ; 

__attribute__((used)) static void FUNC5(struct wined3d_gl_info *gl_info, struct wined3d_caps_gl_ctx *ctx,
        const char *gl_renderer, enum wined3d_gl_vendor gl_vendor,
        enum wined3d_pci_vendor card_vendor, enum wined3d_pci_device device)
{
    unsigned int i;

    for (i = 0; i < FUNC0(quirk_table); ++i)
    {
        if (!quirk_table[i].match(gl_info, ctx, gl_renderer, gl_vendor, card_vendor, device)) continue;
        FUNC1("Applying driver quirk \"%s\".\n", quirk_table[i].description);
        quirk_table[i].apply(gl_info);
    }

    /* Find out if PBOs work as they are supposed to. */
    FUNC4(gl_info);
}