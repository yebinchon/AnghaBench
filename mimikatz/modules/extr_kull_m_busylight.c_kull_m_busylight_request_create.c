
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int red; int green; int blue; } ;
struct TYPE_5__ {int NextStep; int RepeatInterval; int OnTimeSteps; int OffTimeSteps; int AudioByte; TYPE_1__ color; } ;
typedef TYPE_2__* PCBUSYLIGHT_COMMAND_STEP ;
typedef int* PBYTE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int BUSYLIGHT_OUTPUT_REPORT_SIZE ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int*) ;
 int PRINT_ERROR (char*,int) ;
 int TRUE ;
 int min (int,int) ;

BOOL kull_m_busylight_request_create(PCBUSYLIGHT_COMMAND_STEP commands, DWORD count, PBYTE *data, DWORD *size)
{
 BOOL status = FALSE;
 DWORD i;
 USHORT sum;

 *size = BUSYLIGHT_OUTPUT_REPORT_SIZE;
 if(*data = (PBYTE) LocalAlloc(LPTR, *size))
 {
  if(count >=7)
   PRINT_ERROR(L"count=%u (max is 7)\n", count);
  for(i = 0; i < min(count, 7); i++)
  {
   (*data)[i * 8 + 1] = (commands[i].NextStep & 0xf0) ? commands[i].NextStep : (commands[i].NextStep | 0x10);
   (*data)[i * 8 + 2] = commands[i].RepeatInterval;

   (*data)[i * 8 + 3] = commands[i].color.red;
   (*data)[i * 8 + 4] = commands[i].color.green;
   (*data)[i * 8 + 5] = commands[i].color.blue;

   (*data)[i * 8 + 6] = commands[i].OnTimeSteps;
   (*data)[i * 8 + 7] = commands[i].OffTimeSteps;
   (*data)[i * 8 + 8] = commands[i].AudioByte;
  }
  (*data)[57] = 4;
  (*data)[58] = 4;
  (*data)[59] = 85;

  (*data)[60] = (*data)[61] = (*data)[62] = 0xff;

  for(i = 1, sum = 0; i < (*size - 2); i++)
   sum += (*data)[i];
  (*data)[63] = (BYTE) (sum / 256);
  (*data)[64] = (BYTE) (sum % 256);

  status = TRUE;
  if(!status)
  {
   *data = (PBYTE) LocalFree(*data);
   *size = 0;
  }
 }
 return status;
}
