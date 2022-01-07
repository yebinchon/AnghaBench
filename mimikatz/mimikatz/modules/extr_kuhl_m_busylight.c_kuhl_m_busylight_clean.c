
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int TRUE ;
 int kuhl_m_busylight_devices ;
 int kull_m_busylight_devices_free (int ,int ) ;

NTSTATUS kuhl_m_busylight_clean()
{
 kull_m_busylight_devices_free(kuhl_m_busylight_devices, TRUE);
 return STATUS_SUCCESS;
}
