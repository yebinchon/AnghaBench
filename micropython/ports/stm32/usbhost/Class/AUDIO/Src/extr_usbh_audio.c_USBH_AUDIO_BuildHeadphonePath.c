
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_22__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_9__ USBH_HandleTypeDef ;
struct TYPE_20__ {TYPE_6__** OutputTerminalDesc; TYPE_2__** InputTerminalDesc; } ;
struct TYPE_21__ {size_t InputTerminalNum; size_t ASNum; TYPE_7__ cs_desc; TYPE_4__* as_desc; } ;
struct TYPE_19__ {int wTerminalType; } ;
struct TYPE_18__ {size_t asociated_as; size_t asociated_feature; size_t asociated_mixer; size_t asociated_selector; size_t asociated_terminal; int asociated_channels; } ;
struct TYPE_17__ {TYPE_3__* GeneralDesc; } ;
struct TYPE_16__ {size_t bTerminalLink; } ;
struct TYPE_15__ {size_t bTerminalID; int bNrChannels; int wTerminalType; } ;
struct TYPE_14__ {TYPE_10__* pData; } ;
struct TYPE_13__ {TYPE_8__ class_desc; TYPE_5__ headphone; } ;
typedef TYPE_10__ AUDIO_HandleTypeDef ;


 int LE16 (int ) ;




 int USBH_AUDIO_FindLinkedUnit (TYPE_9__*,size_t) ;
 int USBH_FAIL ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_AUDIO_BuildHeadphonePath(USBH_HandleTypeDef *phost)
{
  uint8_t UnitID = 0, Type, Index;
  uint32_t value;
  uint8_t terminalIndex;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  AUDIO_Handle = phost->pActiveClass->pData;


  for(terminalIndex = 0; terminalIndex < AUDIO_Handle->class_desc.InputTerminalNum; terminalIndex++)
  {
    if(LE16(AUDIO_Handle->class_desc.cs_desc.InputTerminalDesc[terminalIndex]->wTerminalType) == 0x101)
    {
      UnitID = AUDIO_Handle->class_desc.cs_desc.InputTerminalDesc[terminalIndex]->bTerminalID;
      AUDIO_Handle->headphone.asociated_channels = AUDIO_Handle->class_desc.cs_desc.InputTerminalDesc[terminalIndex]->bNrChannels;
      break;
    }
  }

  for(Index = 0; Index < AUDIO_Handle->class_desc.ASNum; Index++)
  {
    if(AUDIO_Handle->class_desc.as_desc[Index].GeneralDesc->bTerminalLink == UnitID)
    {
      AUDIO_Handle->headphone.asociated_as = Index;
      break;
    }
  }

  do
  {
    value = USBH_AUDIO_FindLinkedUnit(phost, UnitID);
    Index = value & 0xFF;
    Type = (value >> 8) & 0xFF;
    UnitID = (value >> 16) & 0xFF;

    switch (Type)
    {
    case 131:
      AUDIO_Handle->headphone.asociated_feature = Index;
      break;

    case 130:
      AUDIO_Handle->headphone.asociated_mixer = Index;
      break;

    case 128:
      AUDIO_Handle->headphone.asociated_selector = Index;
      break;

    case 129:
      AUDIO_Handle->headphone.asociated_terminal = Index;
      if(LE16(AUDIO_Handle->class_desc.cs_desc.OutputTerminalDesc[Index]->wTerminalType) != 0x103)
      {
        return USBH_OK;
      }
      break;
    }
  }
  while ((Type != 129) && (value > 0));

  return USBH_FAIL;
}
