
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pci_bar {int data; } ;
typedef int pci_desc ;


 int pci_read (int *,int,int,int,int,int) ;

void pci_read_bar( pci_desc *desc, int bus, int dev, int fn, int bar,
           struct _pci_bar *bar_data ) {
    bar_data->data = pci_read( desc, bus, dev, fn, 0x10 + (bar * 4), 4 );
}
