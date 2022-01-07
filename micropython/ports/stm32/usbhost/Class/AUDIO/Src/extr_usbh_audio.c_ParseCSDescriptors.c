
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_5__ {int ** MixerUnitDesc; int ** SelectorUnitDesc; int ** FeatureUnitDesc; int ** OutputTerminalDesc; int ** InputTerminalDesc; int * HeaderDesc; } ;
struct TYPE_7__ {size_t ASNum; TYPE_2__* as_desc; int MixerUnitNum; TYPE_1__ cs_desc; int SelectorUnitNum; int FeatureUnitNum; int OutputTerminalNum; int InputTerminalNum; } ;
struct TYPE_6__ {int * FormatTypeDesc; int * GeneralDesc; } ;
typedef int AUDIO_SelectorDescTypeDef ;
typedef int AUDIO_OTDescTypeDef ;
typedef int AUDIO_MixerDescTypeDef ;
typedef int AUDIO_ITDescTypeDef ;
typedef int AUDIO_HeaderDescTypeDef ;
typedef int AUDIO_FeatureDescTypeDef ;
typedef TYPE_3__ AUDIO_ClassSpecificDescTypedef ;
typedef int AUDIO_ASGeneralDescTypeDef ;
typedef int AUDIO_ASFormatTypeDescTypeDef ;
 int USBH_OK ;
 scalar_t__ USB_SUBCLASS_AUDIOCONTROL ;
 scalar_t__ USB_SUBCLASS_AUDIOSTREAMING ;

__attribute__((used)) static USBH_StatusTypeDef ParseCSDescriptors(AUDIO_ClassSpecificDescTypedef *class_desc,
                                      uint8_t ac_subclass,
                                      uint8_t *pdesc)
{
  if(ac_subclass == USB_SUBCLASS_AUDIOCONTROL)
  {
    switch(pdesc[2])
    {
    case 132:
      class_desc->cs_desc.HeaderDesc = (AUDIO_HeaderDescTypeDef *)pdesc;
      break;

    case 131:
      class_desc->cs_desc.InputTerminalDesc[class_desc->InputTerminalNum++] = (AUDIO_ITDescTypeDef*) pdesc;
      break;

    case 129:
      class_desc->cs_desc.OutputTerminalDesc[class_desc->OutputTerminalNum++] = (AUDIO_OTDescTypeDef*) pdesc;
      break;

    case 134:
      class_desc->cs_desc.FeatureUnitDesc[class_desc->FeatureUnitNum++] = (AUDIO_FeatureDescTypeDef*) pdesc;
      break;

    case 128:
      class_desc->cs_desc.SelectorUnitDesc[class_desc->SelectorUnitNum++] = (AUDIO_SelectorDescTypeDef*) pdesc;
      break;

    case 130:
      class_desc->cs_desc.MixerUnitDesc[class_desc->MixerUnitNum++] = (AUDIO_MixerDescTypeDef*) pdesc;
      break;

    default:
      break;
    }
  }
  else if(ac_subclass == USB_SUBCLASS_AUDIOSTREAMING)
  {
    switch(pdesc[2])
    {
    case 135:
      class_desc->as_desc[class_desc->ASNum].GeneralDesc = (AUDIO_ASGeneralDescTypeDef*) pdesc;
      break;
    case 133:
      class_desc->as_desc[class_desc->ASNum++].FormatTypeDesc = (AUDIO_ASFormatTypeDescTypeDef*) pdesc;
      break;
    default:
      break;
    }
  }

  return USBH_OK;
}
