
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ssl_ctx; scalar_t__ extra_len; int * extra_buf; int * ssl_buf; scalar_t__ peek_len; int * peek_msg; int * peek_msg_mem; } ;


 int DeleteSecurityContext (int *) ;
 int False ;
 int FreeCredentialsHandle (int *) ;
 scalar_t__ SecIsValidHandle (int *) ;
 int TCP_CLOSE (int) ;
 int compat_cred_handle ;
 int cred_handle ;
 scalar_t__ cred_handle_initialized ;
 int g_sock ;
 TYPE_1__* g_ssl ;
 int g_ssl_initialized ;
 int * g_ssl_server ;
 scalar_t__ have_compat_cred_handle ;
 int xfree (int *) ;

void
tcp_disconnect(void)
{
 TCP_CLOSE(g_sock);
 g_sock = -1;
}
