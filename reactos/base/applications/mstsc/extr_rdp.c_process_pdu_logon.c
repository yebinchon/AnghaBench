
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int STREAM ;


 int DEBUG (char*) ;
 scalar_t__ INFOTYPE_LOGON_EXTENDED_INF ;
 scalar_t__ LOGON_EX_AUTORECONNECTCOOKIE ;
 int True ;
 int g_has_reconnect_random ;
 scalar_t__ g_reconnect_logonid ;
 int g_reconnect_random ;
 int g_reconnect_random_ts ;
 int in_uint32_le (int ,scalar_t__) ;
 int in_uint8a (int ,int ,int) ;
 int in_uint8s (int ,int) ;
 int time (int *) ;
 int warning (char*) ;

void
process_pdu_logon(STREAM s)
{
 uint32 infotype;
 in_uint32_le(s, infotype);
 if (infotype == INFOTYPE_LOGON_EXTENDED_INF)
 {
  uint32 fieldspresent;

  in_uint8s(s, 2);
  in_uint32_le(s, fieldspresent);
  if (fieldspresent & LOGON_EX_AUTORECONNECTCOOKIE)
  {
   uint32 len;
   uint32 version;


   in_uint8s(s, 4);


   in_uint32_le(s, len);
   if (len != 28)
   {
    warning("Invalid length in Auto-Reconnect packet\n");
    return;
   }

   in_uint32_le(s, version);
   if (version != 1)
   {
    warning("Unsupported version of Auto-Reconnect packet\n");
    return;
   }

   in_uint32_le(s, g_reconnect_logonid);
   in_uint8a(s, g_reconnect_random, 16);
   g_has_reconnect_random = True;
   g_reconnect_random_ts = time(((void*)0));
   DEBUG(("Saving auto-reconnect cookie, id=%u\n", g_reconnect_logonid));
  }
 }
}
