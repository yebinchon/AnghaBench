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
struct gpu_description {int vendor; int card; } ;
typedef  enum wined3d_pci_vendor { ____Placeholder_wined3d_pci_vendor } wined3d_pci_vendor ;
typedef  enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;

/* Variables and functions */
 unsigned int FUNC0 (struct gpu_description const*) ; 
 struct gpu_description const* gpu_description_table ; 

__attribute__((used)) static const struct gpu_description *FUNC1(enum wined3d_pci_vendor vendor,
        enum wined3d_pci_device device)
{
    unsigned int i;

    for (i = 0; i < FUNC0(gpu_description_table); ++i)
    {
        if (vendor == gpu_description_table[i].vendor && device == gpu_description_table[i].card)
            return &gpu_description_table[i];
    }

    return NULL;
}