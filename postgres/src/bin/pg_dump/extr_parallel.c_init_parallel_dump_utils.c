
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int GetCurrentThreadId () ;
 int MAKEWORD (int,int) ;
 int TlsAlloc () ;
 int WSAStartup (int ,int *) ;
 int exit_nicely (int) ;
 int mainThreadId ;
 int on_exit_nicely (int ,int *) ;
 int parallel_init_done ;
 int pg_log_error (char*,int) ;
 int shutdown_parallel_dump_utils ;
 int tls_index ;

void
init_parallel_dump_utils(void)
{
}
