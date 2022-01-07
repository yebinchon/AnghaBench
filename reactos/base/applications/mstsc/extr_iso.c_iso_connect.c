
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int uint32 ;
typedef scalar_t__ uint16 ;
typedef int * STREAM ;
typedef void* RD_BOOL ;


 void* False ;


 scalar_t__ ISO_PDU_CC ;
 int PROTOCOL_HYBRID ;
 int PROTOCOL_RDP ;
 int PROTOCOL_SSL ;
 scalar_t__ RDP_NEG_FAILURE ;
 scalar_t__ RDP_NEG_RSP ;
 scalar_t__ RDP_V5 ;




 void* True ;
 int cssp_connect (char*,char*,char*,char*,int *) ;
 int error (char*,int) ;
 int fprintf (int ,char*,...) ;
 void* g_encryption ;
 void* g_negotiate_rdp_protocol ;
 scalar_t__ g_rdp_version ;
 scalar_t__ g_sc_card_name ;
 scalar_t__ g_sc_container_name ;
 scalar_t__ g_sc_csp_name ;
 scalar_t__ g_sc_reader_name ;
 int g_use_password_as_pin ;
 int in_uint16 (int *,scalar_t__) ;
 int in_uint32 (int *,int) ;
 int in_uint8 (int *,scalar_t__) ;
 int * iso_recv_msg (scalar_t__*,int *) ;
 int iso_send_connection_request (char*,int) ;
 scalar_t__ s_check_rem (int *,int) ;
 int stderr ;
 int tcp_connect (char*) ;
 int tcp_disconnect () ;
 int tcp_tls_connect () ;
 int warning (char*) ;

RD_BOOL
iso_connect(char *server, char *username, char *domain, char *password,
     RD_BOOL reconnect, uint32 * selected_protocol)
{
 STREAM s;
 uint8 code;
 uint32 neg_proto;

 g_negotiate_rdp_protocol = True;

 neg_proto = PROTOCOL_SSL;
      retry:
 *selected_protocol = PROTOCOL_RDP;
 code = 0;

 if (!tcp_connect(server))
  return False;

 iso_send_connection_request(username, neg_proto);

 s = iso_recv_msg(&code, ((void*)0));
 if (s == ((void*)0))
  return False;

 if (code != ISO_PDU_CC)
 {
  error("expected CC, got 0x%x\n", code);
  tcp_disconnect();
  return False;
 }

 if (g_rdp_version >= RDP_V5 && s_check_rem(s, 8))
 {

  const char *reason = ((void*)0);

  uint8 type = 0, flags = 0;
  uint16 length = 0;
  uint32 data = 0;

  in_uint8(s, type);
  in_uint8(s, flags);
  in_uint16(s, length);
  in_uint32(s, data);

  if (type == RDP_NEG_FAILURE)
  {
   RD_BOOL retry_without_neg = False;

   switch (data)
   {
    case 128:
     reason = "SSL with user authentication required by server";
     break;
    case 130:
     reason = "SSL not allowed by server";
     retry_without_neg = True;
     break;
    case 131:
     reason = "no valid authentication certificate on server";
     retry_without_neg = True;
     break;
    case 132:
     reason = "inconsistent negotiation flags";
     break;
    case 129:
     reason = "SSL required by server";
     break;
    case 133:
     reason = "CredSSP required by server";
     break;
    default:
     reason = "unknown reason";
   }

   tcp_disconnect();

   if (retry_without_neg)
   {
    fprintf(stderr,
     "Failed to negotiate protocol, retrying with plain RDP.\n");
    g_negotiate_rdp_protocol = False;
    goto retry;
   }

   fprintf(stderr, "Failed to connect, %s.\n", reason);
   return False;
  }

  if (type != RDP_NEG_RSP)
  {
   tcp_disconnect();
   error("Expected RDP_NEG_RSP, got type = 0x%x\n", type);
   return False;
  }


  if (data == PROTOCOL_SSL)
  {
   fprintf(stderr, "SSL not compiled in.\n");

  }
  else if (data == PROTOCOL_RDP)
  {
   fprintf(stderr, "Connection established using plain RDP.\n");
  }
  else if (data != PROTOCOL_RDP)
  {
   tcp_disconnect();
   error("Unexpected protocol in negotiation response, got data = 0x%x.\n",
         data);
   return False;
  }
  if (length || flags) {}

  *selected_protocol = data;
 }
 return True;
}
