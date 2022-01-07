
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_licence_error_result ;
 scalar_t__ g_licence_issued ;
 scalar_t__ g_sec_decrypt_use_count ;
 scalar_t__ g_sec_encrypt_use_count ;
 scalar_t__ g_server_rdp_version ;
 int mcs_reset_state () ;

void
sec_reset_state(void)
{
 g_server_rdp_version = 0;
 g_sec_encrypt_use_count = 0;
 g_sec_decrypt_use_count = 0;
 g_licence_issued = 0;
 g_licence_error_result = 0;
 mcs_reset_state();
}
