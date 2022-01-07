
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_6__ {int end; int p; } ;
typedef TYPE_1__* STREAM ;


 int DEBUG (char*) ;
 int SCARD_LOCK_SEC ;
 int SEC_ENCRYPT ;
 int g_licence_error_result ;
 int g_licence_issued ;
 int g_rc4_key_len ;
 int g_sec_sign_key ;
 int hexdump (int,int) ;
 int mcs_send_to_channel (TYPE_1__*,int ) ;
 int out_uint32_le (TYPE_1__*,int) ;
 int s_pop_layer (TYPE_1__*,int ) ;
 int scard_lock (int ) ;
 int scard_unlock (int ) ;
 int sec_encrypt (int,int) ;
 int sec_hdr ;
 int sec_sign (int,int,int ,int ,int,int) ;

void
sec_send_to_channel(STREAM s, uint32 flags, uint16 channel)
{
 int datalen;





 s_pop_layer(s, sec_hdr);
 if ((!g_licence_issued && !g_licence_error_result) || (flags & SEC_ENCRYPT))
  out_uint32_le(s, flags);

 if (flags & SEC_ENCRYPT)
 {
  flags &= ~SEC_ENCRYPT;
  datalen = s->end - s->p - 8;






  sec_sign(s->p, 8, g_sec_sign_key, g_rc4_key_len, s->p + 8, datalen);
  sec_encrypt(s->p + 8, datalen);
 }

 mcs_send_to_channel(s, channel);




}
