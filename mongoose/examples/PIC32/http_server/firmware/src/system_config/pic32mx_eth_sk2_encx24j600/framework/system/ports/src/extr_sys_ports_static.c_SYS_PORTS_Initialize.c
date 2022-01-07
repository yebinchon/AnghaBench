
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIB_PORTS_AnPinsModeSelect (int ,int ,int ) ;
 int PLIB_PORTS_ChangeNoticeEnable (int ) ;
 int PLIB_PORTS_CnPinsEnable (int ,int ) ;
 int PLIB_PORTS_CnPinsPullUpEnable (int ,int ) ;
 int PLIB_PORTS_DirectionOutputSet (int ,int ,int) ;
 int PLIB_PORTS_OpenDrainEnable (int ,int ,int ) ;
 int PLIB_PORTS_Write (int ,int ,int ) ;
 int PORTS_ID_0 ;
 int PORTS_PIN_MODE_DIGITAL ;
 int PORT_CHANNEL_A ;
 int PORT_CHANNEL_B ;
 int SYS_PORT_AD1PCFG ;
 int SYS_PORT_A_LAT ;
 int SYS_PORT_A_ODC ;
 int SYS_PORT_A_TRIS ;
 int SYS_PORT_B_LAT ;
 int SYS_PORT_B_ODC ;
 int SYS_PORT_B_TRIS ;
 int SYS_PORT_CNEN ;
 int SYS_PORT_CNPUE ;

void SYS_PORTS_Initialize(void)
{

    PLIB_PORTS_AnPinsModeSelect(PORTS_ID_0, SYS_PORT_AD1PCFG, PORTS_PIN_MODE_DIGITAL);
    PLIB_PORTS_CnPinsPullUpEnable(PORTS_ID_0, SYS_PORT_CNPUE);
    PLIB_PORTS_CnPinsEnable(PORTS_ID_0, SYS_PORT_CNEN);
    PLIB_PORTS_ChangeNoticeEnable(PORTS_ID_0);



    PLIB_PORTS_OpenDrainEnable(PORTS_ID_0, PORT_CHANNEL_A, SYS_PORT_A_ODC);
    PLIB_PORTS_Write( PORTS_ID_0, PORT_CHANNEL_A, SYS_PORT_A_LAT);
 PLIB_PORTS_DirectionOutputSet( PORTS_ID_0, PORT_CHANNEL_A, SYS_PORT_A_TRIS ^ 0xFFFF);


    PLIB_PORTS_OpenDrainEnable(PORTS_ID_0, PORT_CHANNEL_B, SYS_PORT_B_ODC);
    PLIB_PORTS_Write( PORTS_ID_0, PORT_CHANNEL_B, SYS_PORT_B_LAT);
 PLIB_PORTS_DirectionOutputSet( PORTS_ID_0, PORT_CHANNEL_B, SYS_PORT_B_TRIS ^ 0xFFFF);

}
