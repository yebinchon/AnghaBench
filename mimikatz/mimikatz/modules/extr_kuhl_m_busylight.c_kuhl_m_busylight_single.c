
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {void* blue; void* green; void* red; } ;
struct TYPE_5__ {int member_2; int member_1; int member_0; } ;
struct TYPE_6__ {int member_1; int member_3; TYPE_4__ color; int AudioByte; int member_5; int member_4; TYPE_1__ member_2; int member_0; } ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef void* BYTE ;
typedef TYPE_2__ BUSYLIGHT_COMMAND_STEP ;


 TYPE_4__ BUSYLIGHT_COLOR_CYAN ;
 int BUSYLIGHT_MEDIA (int ,int ) ;
 int BUSYLIGHT_MEDIA_JINGLE_IM2 ;
 int BUSYLIGHT_MEDIA_MUTE ;
 int BUSYLIGHT_MEDIA_SOUND_OPENOFFICE ;
 int BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 scalar_t__ isBusyLight ;
 int kuhl_m_busylight_devices ;
 int kull_m_busylight_request_send (int ,TYPE_2__*,int,int ) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_busylight_single(int argc, wchar_t * argv[])
{
 PCWCHAR szColor;
 DWORD dwColor;
 BUSYLIGHT_COMMAND_STEP mdl = {0, 1, {0, 0, 0}, 1, 0, BUSYLIGHT_MEDIA_MUTE};

 mdl.color = BUSYLIGHT_COLOR_CYAN;
 if(isBusyLight)
 {
  mdl.AudioByte = BUSYLIGHT_MEDIA(kull_m_string_args_byName(argc, argv, L"sound", ((void*)0), ((void*)0)) ? BUSYLIGHT_MEDIA_SOUND_OPENOFFICE : BUSYLIGHT_MEDIA_JINGLE_IM2, BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM);
  if(kull_m_string_args_byName(argc, argv, L"color", &szColor, ((void*)0)))
  {
   dwColor = wcstoul(szColor, ((void*)0), 0);
   mdl.color.red = (BYTE) ((dwColor & 0x00ff0000) >> 16);
   mdl.color.green = (BYTE) ((dwColor & 0x0000ff00) >> 8);
   mdl.color.blue = (BYTE) (dwColor & 0x000000ff);
  }
  kull_m_busylight_request_send(kuhl_m_busylight_devices, &mdl, 1, TRUE);
 }
 else PRINT_ERROR(L"No BusyLight\n");
 return STATUS_SUCCESS;
}
