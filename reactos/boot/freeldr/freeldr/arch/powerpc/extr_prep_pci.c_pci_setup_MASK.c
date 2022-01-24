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
typedef  int /*<<< orphan*/  pci_desc ;
typedef  int /*<<< orphan*/  pci_cfg ;
struct TYPE_2__ {int /*<<< orphan*/ * cfg; } ;
typedef  int /*<<< orphan*/  PCONFIGURATION_COMPONENT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASECLASS ; 
 int /*<<< orphan*/  PCI_DEVICEID ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int /*<<< orphan*/  PCI_VENDORID ; 
 TYPE_1__ pci1_desc ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  vga1_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 

void FUNC3( PCONFIGURATION_COMPONENT_DATA pcibus, pci_desc *desc ) {
    unsigned char type;
    unsigned short vendor, device, devclass;
    int funcs, bus, dev, fn;

    pci1_desc.cfg = (pci_cfg *)0x80000cf8;

    FUNC1("PCI Bus:\n");
    for( bus = 0; bus < 1; bus++ ) {
        for( dev = 0; dev < 32; dev++ ) {
            type = FUNC0(desc,bus,dev,0,PCI_HEADER_TYPE,1);
            vendor = FUNC0(desc,bus,dev,0,PCI_VENDORID,2);
            device = FUNC0(desc,bus,dev,0,PCI_DEVICEID,2);

            if(vendor == 0 || vendor == 0xffff) continue;
            if(type & 0x80) funcs = 8; else funcs = 1;

            for( fn = 0; fn < funcs; fn++ ) {
                devclass = FUNC0(desc,bus,dev,fn,PCI_BASECLASS,1);
        FUNC1(" %d:%d -> vendor:device:class %x:%x:%x\n",
               bus, dev, vendor, device, devclass);

                if( devclass == 3 ) {
            FUNC1("Setting up vga...\n");
                    FUNC2(pcibus,desc,&vga1_desc,bus,dev,fn);
            FUNC1("Done with vga\n");
                }
            }
        }
    }
    FUNC1("^-- end PCI\n");
}