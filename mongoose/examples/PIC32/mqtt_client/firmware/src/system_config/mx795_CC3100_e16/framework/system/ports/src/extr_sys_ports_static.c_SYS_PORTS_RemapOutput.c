
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PORTS_REMAP_OUTPUT_PIN ;
typedef int PORTS_REMAP_OUTPUT_FUNCTION ;
typedef int PORTS_MODULE_ID ;


 int DEVCON_ID_0 ;
 int DEVCON_PPS_REGISTERS ;
 int PLIB_DEVCON_DeviceRegistersUnlock (int ,int ) ;
 int PLIB_DEVCON_SystemUnlock (int ) ;
 scalar_t__ PLIB_PORTS_ExistsRemapOutput (int ) ;
 int PLIB_PORTS_RemapOutput (int ,int ,int ) ;

void SYS_PORTS_RemapOutput( PORTS_MODULE_ID index,
          PORTS_REMAP_OUTPUT_FUNCTION function,
          PORTS_REMAP_OUTPUT_PIN remapPin )
{
}
