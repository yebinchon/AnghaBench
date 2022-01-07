
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int params ;
struct TYPE_3__ {int packets_sent; int packets_received; int min_round_time; int max_round_time; int avg_round_time; } ;
typedef TYPE_1__ netapp_pingreport_args_t ;
typedef scalar_t__ event_hdr ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int usRxEventOpcode; int slTransmitDataError; int (* sWlanCB ) (int,int *,int) ;int InformHostOnTxComplete; int NumberOfSentPackets; int NumberOfReleasedPackets; } ;
typedef int INT32 ;
typedef int CHAR ;


 int BSD_RSP_PARAMS_STATUS_OFFSET ;
 int ERROR_SOCKET_INACTIVE ;
 int HCI_EVENT_CC3000_CAN_SHUT_DOWN ;
 int HCI_EVENT_HEADER_SIZE ;
 int HCI_EVENT_OPCODE_OFFSET ;
 int HCI_EVENT_STATUS_OFFSET ;


 int HCI_EVNT_PATCHES_REQ ;
 int HCI_EVNT_SEND ;
 int HCI_EVNT_SENDTO ;
 int HCI_EVNT_UNSOL_BASE ;



 int HCI_EVNT_WLAN_UNSOL_BASE ;




 int HCI_EVNT_WRITE ;
 int * M_BSD_RESP_PARAMS_OFFSET (int *) ;
 int NETAPP_IPCONFIG_IP_LENGTH ;
 int NETAPP_IPCONFIG_MAC_OFFSET ;
 int NETAPP_PING_AVG_RTT_OFFSET ;
 int NETAPP_PING_MAX_RTT_OFFSET ;
 int NETAPP_PING_MIN_RTT_OFFSET ;
 int NETAPP_PING_PACKETS_RCVD_OFFSET ;
 int NETAPP_PING_PACKETS_SENT_OFFSET ;
 int STREAM_TO_STREAM (int *,int *,int ) ;
 int STREAM_TO_UINT16 (int *,int ,int) ;
 int STREAM_TO_UINT32 (int *,int ,int) ;
 int STREAM_TO_UINT8 (int *,int ,int ) ;
 int hci_event_unsol_flowcontrol_handler (int *) ;
 int stub1 (int,int *,int) ;
 int stub2 (int,int *,int) ;
 int stub3 (int,int *,int) ;
 int stub4 (int,int *,int) ;
 int stub5 (int,int *,int) ;
 TYPE_2__ tSLInformation ;
 int update_socket_active_status (int *) ;

INT32 hci_unsol_event_handler(CHAR *event_hdr)
{
 CHAR * data = ((void*)0);
 INT32 event_type;
 UINT32 NumberOfReleasedPackets;
 UINT32 NumberOfSentPackets;

 STREAM_TO_UINT16(event_hdr, HCI_EVENT_OPCODE_OFFSET,event_type);

 if (event_type & HCI_EVNT_UNSOL_BASE)
 {
  switch(event_type)
  {

  case 135:
   {
    hci_event_unsol_flowcontrol_handler(event_hdr);

    NumberOfReleasedPackets = tSLInformation.NumberOfReleasedPackets;
    NumberOfSentPackets = tSLInformation.NumberOfSentPackets;

    if (NumberOfReleasedPackets == NumberOfSentPackets)
    {
     if (tSLInformation.InformHostOnTxComplete)
     {
      tSLInformation.sWlanCB(HCI_EVENT_CC3000_CAN_SHUT_DOWN, ((void*)0), 0);
     }
    }
    return 1;

   }
  }
 }

 if(event_type & HCI_EVNT_WLAN_UNSOL_BASE)
 {
  switch(event_type)
  {
  case 132:
  case 131:
  case 129:
  case 128:
  case 133:

   if( tSLInformation.sWlanCB )
   {
    tSLInformation.sWlanCB(event_type, 0, 0);
   }
   break;

  case 130:
   {
    UINT8 params[NETAPP_IPCONFIG_MAC_OFFSET + 1];
    UINT8 *recParams = params;

    data = (CHAR*)(event_hdr) + HCI_EVENT_HEADER_SIZE;


    STREAM_TO_STREAM(data,recParams,NETAPP_IPCONFIG_IP_LENGTH);
    data += 4;

    STREAM_TO_STREAM(data,recParams,NETAPP_IPCONFIG_IP_LENGTH);
    data += 4;

    STREAM_TO_STREAM(data,recParams,NETAPP_IPCONFIG_IP_LENGTH);
    data += 4;

    STREAM_TO_STREAM(data,recParams,NETAPP_IPCONFIG_IP_LENGTH);
    data += 4;

    STREAM_TO_STREAM(data,recParams,NETAPP_IPCONFIG_IP_LENGTH);

    STREAM_TO_UINT8(event_hdr, HCI_EVENT_STATUS_OFFSET, *recParams);


    if( tSLInformation.sWlanCB )
    {
     tSLInformation.sWlanCB(event_type, (CHAR *)params, sizeof(params));
    }
   }
   break;

  case 134:
   {
    netapp_pingreport_args_t params;
    data = (CHAR*)(event_hdr) + HCI_EVENT_HEADER_SIZE;
    STREAM_TO_UINT32(data, NETAPP_PING_PACKETS_SENT_OFFSET, params.packets_sent);
    STREAM_TO_UINT32(data, NETAPP_PING_PACKETS_RCVD_OFFSET, params.packets_received);
    STREAM_TO_UINT32(data, NETAPP_PING_MIN_RTT_OFFSET, params.min_round_time);
    STREAM_TO_UINT32(data, NETAPP_PING_MAX_RTT_OFFSET, params.max_round_time);
    STREAM_TO_UINT32(data, NETAPP_PING_AVG_RTT_OFFSET, params.avg_round_time);

    if( tSLInformation.sWlanCB )
    {
     tSLInformation.sWlanCB(event_type, (CHAR *)&params, sizeof(params));
    }
   }
   break;
  case 136:
   {
    data = (CHAR *)(event_hdr) + HCI_EVENT_HEADER_SIZE;
    if( tSLInformation.sWlanCB )
    {



     tSLInformation.sWlanCB(event_type, data, 1);
    }
   }
   break;


  default:
   return (0);
  }
  return(1);
 }

 if ((event_type == HCI_EVNT_SEND) || (event_type == HCI_EVNT_SENDTO)
  || (event_type == HCI_EVNT_WRITE))
 {
  CHAR *pArg;
  INT32 status;

  pArg = M_BSD_RESP_PARAMS_OFFSET(event_hdr);
  STREAM_TO_UINT32(pArg, BSD_RSP_PARAMS_STATUS_OFFSET,status);

  if (ERROR_SOCKET_INACTIVE == status)
  {



   STREAM_TO_UINT8(event_hdr, HCI_EVENT_STATUS_OFFSET, tSLInformation.slTransmitDataError);
   update_socket_active_status(M_BSD_RESP_PARAMS_OFFSET(event_hdr));

   return (1);
  }
  else
   return (0);
 }


 if ((event_type != tSLInformation.usRxEventOpcode) && (event_type != HCI_EVNT_PATCHES_REQ))
 {
  return(1);
 }

 return(0);
}
