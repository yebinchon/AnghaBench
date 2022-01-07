
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_description {int vendor; int card; } ;
typedef enum wined3d_pci_vendor { ____Placeholder_wined3d_pci_vendor } wined3d_pci_vendor ;
typedef enum wined3d_pci_device { ____Placeholder_wined3d_pci_device } wined3d_pci_device ;


 unsigned int ARRAY_SIZE (struct gpu_description const*) ;
 struct gpu_description const* gpu_description_table ;

__attribute__((used)) static const struct gpu_description *get_gpu_description(enum wined3d_pci_vendor vendor,
        enum wined3d_pci_device device)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(gpu_description_table); ++i)
    {
        if (vendor == gpu_description_table[i].vendor && device == gpu_description_table[i].card)
            return &gpu_description_table[i];
    }

    return ((void*)0);
}
