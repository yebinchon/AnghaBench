
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int STREAM ;


 scalar_t__ SEC_EXCHANGE_PKT ;
 scalar_t__ SEC_PADDING_SIZE ;
 int g_sec_crypted_random ;
 scalar_t__ g_server_public_key_len ;
 int out_uint32_le (int ,scalar_t__) ;
 int out_uint8p (int ,int ,scalar_t__) ;
 int out_uint8s (int ,scalar_t__) ;
 int s_mark_end (int ) ;
 int sec_init (scalar_t__,scalar_t__) ;
 int sec_send (int ,scalar_t__) ;

__attribute__((used)) static void
sec_establish_key(void)
{
 uint32 length = g_server_public_key_len + SEC_PADDING_SIZE;
 uint32 flags = SEC_EXCHANGE_PKT;
 STREAM s;

 s = sec_init(flags, length + 4);

 out_uint32_le(s, length);
 out_uint8p(s, g_sec_crypted_random, g_server_public_key_len);
 out_uint8s(s, SEC_PADDING_SIZE);

 s_mark_end(s);
 sec_send(s, flags);
}
