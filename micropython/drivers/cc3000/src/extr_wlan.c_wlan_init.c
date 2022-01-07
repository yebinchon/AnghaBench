
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tWriteWlanPin ;
typedef int tWlanReadInteruptPin ;
typedef int tWlanInterruptEnable ;
typedef int tWlanInterruptDisable ;
typedef int tWlanCB ;
typedef int tFWPatches ;
typedef int tDriverPatches ;
typedef int tBootLoaderPatches ;
struct TYPE_2__ {int InformHostOnTxComplete; int sWlanCB; int WriteWlanPin; int WlanInterruptDisable; int WlanInterruptEnable; int ReadWlanInterruptPin; int sBootLoaderPatches; int sDriverPatches; int sFWPatches; } ;


 TYPE_1__ tSLInformation ;

void wlan_init( tWlanCB sWlanCB,
 tFWPatches sFWPatches,
 tDriverPatches sDriverPatches,
 tBootLoaderPatches sBootLoaderPatches,
 tWlanReadInteruptPin sReadWlanInterruptPin,
 tWlanInterruptEnable sWlanInterruptEnable,
 tWlanInterruptDisable sWlanInterruptDisable,
 tWriteWlanPin sWriteWlanPin)
{

 tSLInformation.sFWPatches = sFWPatches;
 tSLInformation.sDriverPatches = sDriverPatches;
 tSLInformation.sBootLoaderPatches = sBootLoaderPatches;


 tSLInformation.ReadWlanInterruptPin = sReadWlanInterruptPin;
 tSLInformation.WlanInterruptEnable = sWlanInterruptEnable;
 tSLInformation.WlanInterruptDisable = sWlanInterruptDisable;
 tSLInformation.WriteWlanPin = sWriteWlanPin;


 tSLInformation.sWlanCB= sWlanCB;


 tSLInformation.InformHostOnTxComplete = 1;
}
