
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_encryption ;
 int g_encryption_initial ;
 int tcp_reset_state () ;

void
iso_reset_state(void)
{
 g_encryption = g_encryption_initial;
 tcp_reset_state();
}
