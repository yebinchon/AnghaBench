
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int MACHVTBL ;


 int CONFIG_CMD (int ,int ,int ) ;
 int HalpCalibrateStallExecution () ;
 int MachVtbl ;
 int PcMachInit (char const*) ;
 int READ_PORT_ULONG (int*) ;
 int WRITE_PORT_ULONG (int*,int ) ;
 int XboxMachInit (char const*) ;
 int memset (int *,int ,int) ;

VOID
MachInit(const char *CmdLine)
{
    ULONG PciId;

    memset(&MachVtbl, 0, sizeof(MACHVTBL));



    WRITE_PORT_ULONG((ULONG*)0xcf8, CONFIG_CMD(0, 0, 0));
    PciId = READ_PORT_ULONG((ULONG*)0xcfc);
    if (PciId == 0x02a510de)
    {
        XboxMachInit(CmdLine);
    }
    else
    {
        PcMachInit(CmdLine);
    }

    HalpCalibrateStallExecution();
}
