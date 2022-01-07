
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int acrFirmware ;
typedef int UINT16 ;
typedef int NTSTATUS ;
typedef int BYTE ;


 int ARRAYSIZE (char**) ;
 int FALSE ;
 char** KUHL_M_ACR_FIRMWARE_PN532_SUPPORT ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_acr_Comm ;
 int kuhl_m_acr_pn532Comm ;
 scalar_t__ kull_m_acr_sendrecv_ins (int *,int,int,int,int,int *,int ,int*,int*,int ) ;
 scalar_t__ kull_m_pn532_GetFirmware (int *,int*) ;

NTSTATUS kuhl_m_acr_firmware(int argc, wchar_t * argv[])
{
 BYTE acrFirmware[10];
 BYTE firmwareInfo[4], i;
 UINT16 wOut = sizeof(acrFirmware);

 if(kull_m_acr_sendrecv_ins(&kuhl_m_acr_Comm, 0xff, 0x00, 0x48, 0x00, ((void*)0), 0, acrFirmware, &wOut, FALSE))
  kprintf(L"ACR firmware: %.*S\n", wOut, acrFirmware);

 if(kull_m_pn532_GetFirmware(&kuhl_m_acr_pn532Comm, firmwareInfo))
 {
  kprintf(L"PN532 chip\n version    : 0x%02x\n firmware   : %hhu.%hhu\n support    : ", firmwareInfo[0], firmwareInfo[1], firmwareInfo[2]);
  for(i = 0; i < 8; i++)
   if((firmwareInfo[3] >> i) & 1)
    kprintf(L"%s ; ", (i < ARRAYSIZE(KUHL_M_ACR_FIRMWARE_PN532_SUPPORT)) ? KUHL_M_ACR_FIRMWARE_PN532_SUPPORT[i] : L"RFU");
  kprintf(L"\n");
 }
 return STATUS_SUCCESS;
}
