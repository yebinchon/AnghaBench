
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; struct TYPE_5__* next; } ;
typedef TYPE_1__* PBUSYLIGHT_DEVICE ;
typedef int NTSTATUS ;
typedef int BOOL ;


 int ARRAYSIZE (int ) ;
 int BUSYLIGHT_CAP_LIGHT ;
 int FALSE ;
 int GetKeyboardLayout (int ) ;
 int PtrToUlong (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int isBusyLight ;
 TYPE_1__* kuhl_m_busylight_devices ;
 int kuhl_m_busylight_steps_KiwiHack ;
 int kuhl_m_busylight_steps_ReneCotyHack ;
 int kull_m_busylight_devices_get (TYPE_1__**,int *,int ,int ) ;
 int kull_m_busylight_request_send (TYPE_1__*,int ,int ,int) ;

NTSTATUS kuhl_m_busylight_init()
{
 PBUSYLIGHT_DEVICE cur;
 BOOL isKbFR = (PtrToUlong(GetKeyboardLayout(0)) >> 16) == 0x40c, isKiwi = FALSE;
 if(isBusyLight = kull_m_busylight_devices_get(&kuhl_m_busylight_devices, ((void*)0), BUSYLIGHT_CAP_LIGHT, TRUE))
 {
  for(cur = kuhl_m_busylight_devices; cur; cur = cur->next)
  {
   isKiwi = ((!(cur->id % 2) && isKbFR) || ((cur->id % 2) && !isKbFR));
   kull_m_busylight_request_send(cur, isKiwi ? kuhl_m_busylight_steps_KiwiHack : kuhl_m_busylight_steps_ReneCotyHack, isKiwi ? ARRAYSIZE(kuhl_m_busylight_steps_KiwiHack) : ARRAYSIZE(kuhl_m_busylight_steps_ReneCotyHack), FALSE);
  }
 }
 return STATUS_SUCCESS;
}
