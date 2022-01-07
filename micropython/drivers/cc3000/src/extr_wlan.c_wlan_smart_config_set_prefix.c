
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * pucTxCommandBuffer; } ;
typedef int INT32 ;
typedef char CHAR ;


 int ARRAY_TO_STREAM (int *,char*,int ) ;
 int EFAIL ;
 int HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX ;
 int HEADERS_SIZE_CMD ;
 int SL_SIMPLE_CONFIG_PREFIX_LENGTH ;
 int SimpleLinkWaitEvent (int ,int *) ;
 int hci_command_send (int ,int *,int ) ;
 TYPE_1__ tSLInformation ;

INT32 wlan_smart_config_set_prefix(CHAR* cNewPrefix)
{
 INT32 ret;
 UINT8 *ptr;
 UINT8 *args;

 ret = EFAIL;
 ptr = tSLInformation.pucTxCommandBuffer;
 args = (ptr + HEADERS_SIZE_CMD);

 if (cNewPrefix == ((void*)0))
  return ret;
 else
 {
  *cNewPrefix = 'T';
  *(cNewPrefix + 1) = 'T';
  *(cNewPrefix + 2) = 'T';
 }

 ARRAY_TO_STREAM(args, cNewPrefix, SL_SIMPLE_CONFIG_PREFIX_LENGTH);

 hci_command_send(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, ptr,
  SL_SIMPLE_CONFIG_PREFIX_LENGTH);


 SimpleLinkWaitEvent(HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, &ret);

 return(ret);
}
