
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t int32_t ;
struct TYPE_18__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_8__ USBH_HandleTypeDef ;
struct TYPE_16__ {TYPE_5__** OutputTerminalDesc; TYPE_4__** SelectorUnitDesc; TYPE_3__** MixerUnitDesc; TYPE_2__** FeatureUnitDesc; } ;
struct TYPE_17__ {size_t FeatureUnitNum; size_t MixerUnitNum; size_t SelectorUnitNum; size_t OutputTerminalNum; TYPE_6__ cs_desc; } ;
struct TYPE_19__ {TYPE_7__ class_desc; } ;
struct TYPE_15__ {size_t bSourceID; size_t bTerminalID; } ;
struct TYPE_14__ {size_t bSourceID0; size_t bUnitID; } ;
struct TYPE_13__ {size_t bSourceID0; size_t bSourceID1; size_t bUnitID; } ;
struct TYPE_12__ {size_t bSourceID; size_t bUnitID; } ;
struct TYPE_11__ {TYPE_9__* pData; } ;
typedef TYPE_9__ AUDIO_HandleTypeDef ;


 int UAC_FEATURE_UNIT ;
 int UAC_MIXER_UNIT ;
 int UAC_OUTPUT_TERMINAL ;
 int UAC_SELECTOR_UNIT ;

__attribute__((used)) static int32_t USBH_AUDIO_FindLinkedUnit(USBH_HandleTypeDef *phost, uint8_t UnitID)
{
  uint8_t Index;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  AUDIO_Handle = phost->pActiveClass->pData;


  for(Index = 0; Index < AUDIO_Handle->class_desc.FeatureUnitNum; Index ++)
  {
    if(AUDIO_Handle->class_desc.cs_desc.FeatureUnitDesc[Index]->bSourceID == UnitID)
    {
      UnitID = AUDIO_Handle->class_desc.cs_desc.FeatureUnitDesc[Index]->bUnitID;

      return ((UnitID << 16) | (UAC_FEATURE_UNIT << 8) | Index);
    }
  }


  for(Index = 0; Index < AUDIO_Handle->class_desc.MixerUnitNum; Index ++)
  {
    if((AUDIO_Handle->class_desc.cs_desc.MixerUnitDesc[Index]->bSourceID0 == UnitID)||
       (AUDIO_Handle->class_desc.cs_desc.MixerUnitDesc[Index]->bSourceID1 == UnitID))
    {
      UnitID = AUDIO_Handle->class_desc.cs_desc.MixerUnitDesc[Index]->bUnitID;

      return ((UnitID << 16) | (UAC_MIXER_UNIT << 8) | Index);
    }
  }



  for(Index = 0; Index < AUDIO_Handle->class_desc.SelectorUnitNum; Index ++)
  {
    if(AUDIO_Handle->class_desc.cs_desc.SelectorUnitDesc[Index]->bSourceID0 == UnitID)
    {
      UnitID = AUDIO_Handle->class_desc.cs_desc.SelectorUnitDesc[Index]->bUnitID;

      return ((UnitID << 16) | (UAC_SELECTOR_UNIT << 8) | Index);
    }
  }



  for(Index = 0; Index < AUDIO_Handle->class_desc.OutputTerminalNum; Index ++)
  {
    if(AUDIO_Handle->class_desc.cs_desc.OutputTerminalDesc[Index]->bSourceID == UnitID)
    {
      UnitID = AUDIO_Handle->class_desc.cs_desc.OutputTerminalDesc[Index]->bTerminalID;

      return ((UnitID << 16) | (UAC_OUTPUT_TERMINAL << 8) | Index);
    }
  }


  return -1;
}
