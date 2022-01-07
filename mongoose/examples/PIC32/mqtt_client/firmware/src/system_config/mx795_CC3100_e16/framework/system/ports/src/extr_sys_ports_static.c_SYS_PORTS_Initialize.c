
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_ID_0 ;
 int INT_PRIORITY_LEVEL2 ;
 int INT_SOURCE_CHANGE_NOTICE ;
 int INT_SUBPRIORITY_LEVEL0 ;
 int INT_VECTOR_CN ;
 int PLIB_INT_SourceEnable (int ,int ) ;
 int PLIB_INT_SourceFlagClear (int ,int ) ;
 int PLIB_INT_VectorPrioritySet (int ,int ,int ) ;
 int PLIB_INT_VectorSubPrioritySet (int ,int ,int ) ;
 int PLIB_PORTS_AnPinsModeSelect (int ,int ,int ) ;
 int PLIB_PORTS_ChangeNoticeEnable (int ) ;
 int PLIB_PORTS_CnPinsEnable (int ,int ) ;
 int PLIB_PORTS_CnPinsPullUpEnable (int ,int ) ;
 int PLIB_PORTS_DirectionOutputSet (int ,int ,int) ;
 int PLIB_PORTS_OpenDrainEnable (int ,int ,int ) ;
 int PLIB_PORTS_Read (int ,int ) ;
 int PLIB_PORTS_Write (int ,int ,int ) ;
 int PORTS_ID_0 ;
 int PORTS_PIN_MODE_DIGITAL ;
 int PORT_CHANNEL_D ;
 int SYS_PORT_AD1PCFG ;
 int SYS_PORT_CNEN ;
 int SYS_PORT_CNPUE ;
 int SYS_PORT_D_LAT ;
 int SYS_PORT_D_ODC ;
 int SYS_PORT_D_TRIS ;

void SYS_PORTS_Initialize(void)
{

    PLIB_PORTS_AnPinsModeSelect(PORTS_ID_0, SYS_PORT_AD1PCFG, PORTS_PIN_MODE_DIGITAL);
    PLIB_PORTS_CnPinsPullUpEnable(PORTS_ID_0, SYS_PORT_CNPUE);
    PLIB_PORTS_CnPinsEnable(PORTS_ID_0, SYS_PORT_CNEN);
    PLIB_PORTS_ChangeNoticeEnable(PORTS_ID_0);

    PLIB_PORTS_Read(PORTS_ID_0, PORT_CHANNEL_D);
    PLIB_INT_SourceFlagClear(INT_ID_0, INT_SOURCE_CHANGE_NOTICE);
    PLIB_INT_SourceEnable(INT_ID_0, INT_SOURCE_CHANGE_NOTICE);
    PLIB_INT_VectorPrioritySet(INT_ID_0, INT_VECTOR_CN, INT_PRIORITY_LEVEL2);
    PLIB_INT_VectorSubPrioritySet(INT_ID_0, INT_VECTOR_CN, INT_SUBPRIORITY_LEVEL0);



    PLIB_PORTS_OpenDrainEnable(PORTS_ID_0, PORT_CHANNEL_D, SYS_PORT_D_ODC);
    PLIB_PORTS_Write( PORTS_ID_0, PORT_CHANNEL_D, SYS_PORT_D_LAT);
 PLIB_PORTS_DirectionOutputSet( PORTS_ID_0, PORT_CHANNEL_D, SYS_PORT_D_TRIS ^ 0xFFFF);

}
