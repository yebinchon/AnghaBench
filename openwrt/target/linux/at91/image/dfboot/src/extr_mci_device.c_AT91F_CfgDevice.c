
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMCI_DeviceFeatures; TYPE_2__* pMCI_DeviceDesc; } ;
struct TYPE_5__ {int SDCard_bus_width; int state; } ;
struct TYPE_4__ {scalar_t__ Memory_Capacity; scalar_t__ Sector_Size; scalar_t__ Erase_Block_Enable; scalar_t__ Write_Partial; scalar_t__ Read_Partial; scalar_t__ Max_Write_DataBlock_Length; scalar_t__ Max_Read_DataBlock_Length; int Card_Inserted; scalar_t__ Relative_Card_Address; } ;


 int AT91C_CARD_REMOVED ;
 int AT91C_MCI_IDLE ;
 int AT91C_MCI_SCDBUS ;
 TYPE_3__ MCI_Device ;
 TYPE_2__ MCI_Device_Desc ;
 TYPE_1__ MCI_Device_Features ;

void AT91F_CfgDevice(void)
{


 MCI_Device_Features.Relative_Card_Address = 0;
 MCI_Device_Features.Card_Inserted = AT91C_CARD_REMOVED;
 MCI_Device_Features.Max_Read_DataBlock_Length = 0;
 MCI_Device_Features.Max_Write_DataBlock_Length = 0;
 MCI_Device_Features.Read_Partial = 0;
 MCI_Device_Features.Write_Partial = 0;
 MCI_Device_Features.Erase_Block_Enable = 0;
 MCI_Device_Features.Sector_Size = 0;
 MCI_Device_Features.Memory_Capacity = 0;

 MCI_Device_Desc.state = AT91C_MCI_IDLE;
 MCI_Device_Desc.SDCard_bus_width = AT91C_MCI_SCDBUS;


 MCI_Device.pMCI_DeviceDesc = &MCI_Device_Desc;
 MCI_Device.pMCI_DeviceFeatures = &MCI_Device_Features;

}
