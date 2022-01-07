
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int flags; int name; } ;
typedef int STREAM ;


 int DEBUG_RDP5 (char*) ;
 scalar_t__ RDP_V5 ;
 int SEC_CC_REDIRECTION_SUPPORTED ;
 int SEC_CC_REDIRECT_SESSIONID_FIELD_VALID ;
 int SEC_CC_REDIRECT_VERSION_3 ;
 int SEC_TAG_CLI_CHANNELS ;
 int SEC_TAG_CLI_CLUSTER ;
 int SEC_TAG_CLI_CRYPT ;
 int SEC_TAG_CLI_INFO ;
 TYPE_1__* g_channels ;
 scalar_t__ g_console_session ;
 scalar_t__ g_encryption ;
 int g_height ;
 int g_hostname ;
 int g_keyboard_functionkeys ;
 int g_keyboard_subtype ;
 int g_keyboard_type ;
 int g_keylayout ;
 int g_num_channels ;
 scalar_t__ g_rdp_version ;
 scalar_t__ g_redirect_session_id ;
 int g_server_depth ;
 int g_width ;
 int out_uint16_be (int ,int) ;
 int out_uint16_le (int ,int) ;
 int out_uint32 (int ,scalar_t__) ;
 int out_uint32_be (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int) ;
 int out_uint8a (int ,int ,int) ;
 int out_uint8s (int ,int) ;
 int rdp_out_unistr (int ,int ,int) ;
 int s_mark_end (int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
sec_out_mcs_data(STREAM s, uint32 selected_protocol)
{
 int hostlen = 2 * strlen(g_hostname);
 int length = 162 + 76 + 12 + 4;
 unsigned int i;
 uint32 cluster_flags = 0;

 if (g_num_channels > 0)
  length += g_num_channels * 12 + 8;

 if (hostlen > 30)
  hostlen = 30;


 out_uint16_be(s, 5);
 out_uint16_be(s, 0x14);
 out_uint8(s, 0x7c);
 out_uint16_be(s, 1);

 out_uint16_be(s, (length | 0x8000));

 out_uint16_be(s, 8);
 out_uint16_be(s, 16);
 out_uint8(s, 0);
 out_uint16_le(s, 0xc001);
 out_uint8(s, 0);

 out_uint32_le(s, 0x61637544);
 out_uint16_be(s, ((length - 14) | 0x8000));


 out_uint16_le(s, SEC_TAG_CLI_INFO);
 out_uint16_le(s, 216);
 out_uint16_le(s, (g_rdp_version >= RDP_V5) ? 4 : 1);
 out_uint16_le(s, 8);
 out_uint16_le(s, g_width);
 out_uint16_le(s, g_height);
 out_uint16_le(s, 0xca01);
 out_uint16_le(s, 0xaa03);
 out_uint32_le(s, g_keylayout);
 out_uint32_le(s, 2600);


 rdp_out_unistr(s, g_hostname, hostlen);
 out_uint8s(s, 30 - hostlen);



 out_uint32_le(s, g_keyboard_type);
 out_uint32_le(s, g_keyboard_subtype);
 out_uint32_le(s, g_keyboard_functionkeys);
 out_uint8s(s, 64);
 out_uint16_le(s, 0xca01);
 out_uint16_le(s, 1);

 out_uint32(s, 0);
 out_uint8(s, g_server_depth);
 out_uint16_le(s, 0x0700);
 out_uint8(s, 0);
 out_uint32_le(s, 1);
 out_uint8s(s, 64);
 out_uint32_le(s, selected_protocol);


 out_uint16_le(s, SEC_TAG_CLI_CLUSTER);
 out_uint16_le(s, 12);

 cluster_flags |= SEC_CC_REDIRECTION_SUPPORTED;
 cluster_flags |= (SEC_CC_REDIRECT_VERSION_3 << 2);

 if (g_console_session || g_redirect_session_id != 0)
  cluster_flags |= SEC_CC_REDIRECT_SESSIONID_FIELD_VALID;

 out_uint32_le(s, cluster_flags);
 out_uint32(s, g_redirect_session_id);


 out_uint16_le(s, SEC_TAG_CLI_CRYPT);
 out_uint16_le(s, 12);
 out_uint32_le(s, g_encryption ? 0x3 : 0);
 out_uint32(s, 0);

 DEBUG_RDP5(("g_num_channels is %d\n", g_num_channels));
 if (g_num_channels > 0)
 {
  out_uint16_le(s, SEC_TAG_CLI_CHANNELS);
  out_uint16_le(s, g_num_channels * 12 + 8);
  out_uint32_le(s, g_num_channels);
  for (i = 0; i < g_num_channels; i++)
  {
   DEBUG_RDP5(("Requesting channel %s\n", g_channels[i].name));
   out_uint8a(s, g_channels[i].name, 8);
   out_uint32_be(s, g_channels[i].flags);
  }
 }

 s_mark_end(s);
}
