
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pci_bar {int data; } ;


 int printf (char*,int) ;

void print_bar( struct _pci_bar *bar ) {
    printf("BAR: %x\n", bar->data);
}
