
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;


 int DEBUG_RDP5 (char*) ;
 int MCS_CJRQ ;
 int g_mcs_userid ;
 int iso_init (int) ;
 int iso_send (int ) ;
 int out_uint16_be (int ,int ) ;
 int out_uint8 (int ,int) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
mcs_send_cjrq(uint16 chanid)
{
 STREAM s;

 DEBUG_RDP5(("Sending CJRQ for channel #%d\n", chanid));

 s = iso_init(5);

 out_uint8(s, (MCS_CJRQ << 2));
 out_uint16_be(s, g_mcs_userid);
 out_uint16_be(s, chanid);

 s_mark_end(s);
 iso_send(s);
}
