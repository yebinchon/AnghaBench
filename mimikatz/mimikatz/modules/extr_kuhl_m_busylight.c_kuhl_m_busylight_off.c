
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 scalar_t__ isBusyLight ;
 int kuhl_m_busylight_devices ;
 int kull_m_busylight_request_send_off (int ,int ) ;

NTSTATUS kuhl_m_busylight_off(int argc, wchar_t * argv[])
{
 if(isBusyLight)
  kull_m_busylight_request_send_off(kuhl_m_busylight_devices, TRUE);
 else PRINT_ERROR(L"No BusyLight\n");
 return STATUS_SUCCESS;
}
