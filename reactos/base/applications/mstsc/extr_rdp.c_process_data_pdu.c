
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct stream {int* p; int* data; int size; int* end; int* rdp_hdr; } ;
struct TYPE_2__ {scalar_t__ hist; struct stream ns; } ;
typedef struct stream* STREAM ;
typedef int RD_BOOL ;


 int DEBUG (char*) ;
 int False ;
 int RDP_MPPC_COMPRESSED ;
 scalar_t__ RDP_MPPC_DICT_SIZE ;
 int error (char*) ;
 TYPE_1__ g_mppc_dict ;
 int in_uint16_le (struct stream*,int) ;
 int in_uint8 (struct stream*,int) ;
 int in_uint8s (struct stream*,int) ;
 int memcpy (int*,unsigned char*,scalar_t__) ;
 int mppc_expand (int*,int,int,scalar_t__*,scalar_t__*) ;
 int process_disconnect_pdu (struct stream*,scalar_t__*) ;
 int process_pdu_logon (struct stream*) ;
 int process_pointer_pdu (struct stream*) ;
 int process_update_pdu (struct stream*) ;
 int ui_bell () ;
 int unimpl (char*,int) ;
 int warning (char*) ;
 scalar_t__ xrealloc (int*,scalar_t__) ;

__attribute__((used)) static RD_BOOL
process_data_pdu(STREAM s, uint32 * ext_disc_reason)
{
 uint8 data_pdu_type;
 uint8 ctype;
 uint16 clen;
 uint32 len;

 uint32 roff, rlen;

 struct stream *ns = &(g_mppc_dict.ns);

 in_uint8s(s, 6);
 in_uint16_le(s, len);
 in_uint8(s, data_pdu_type);
 in_uint8(s, ctype);
 in_uint16_le(s, clen);
 clen -= 18;

 if (ctype & RDP_MPPC_COMPRESSED)
 {
  if (len > RDP_MPPC_DICT_SIZE)
   error("error decompressed packet size exceeds max\n");
  if (mppc_expand(s->p, clen, ctype, &roff, &rlen) == -1)
   error("error while decompressing packet\n");




  ns->data = (uint8 *) xrealloc(ns->data, rlen);

  memcpy((ns->data), (unsigned char *) (g_mppc_dict.hist + roff), rlen);

  ns->size = rlen;
  ns->end = (ns->data + ns->size);
  ns->p = ns->data;
  ns->rdp_hdr = ns->p;

  s = ns;
 }

 switch (data_pdu_type)
 {
  case 128:
   process_update_pdu(s);
   break;

  case 133:
   DEBUG(("Received Control PDU\n"));
   break;

  case 129:
   DEBUG(("Received Sync PDU\n"));
   break;

  case 130:
   process_pointer_pdu(s);
   break;

  case 134:
   ui_bell();
   break;

  case 131:
   DEBUG(("Received Logon PDU\n"));

   process_pdu_logon(s);
   break;

  case 132:
   process_disconnect_pdu(s, ext_disc_reason);






   break;

  case 135:
   warning("Automatic reconnect using cookie, failed.\n");
   break;

  default:
   unimpl("data PDU %d\n", data_pdu_type);
 }
 return False;
}
