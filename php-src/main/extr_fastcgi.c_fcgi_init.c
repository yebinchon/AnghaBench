
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sa_t ;
typedef int sa ;
typedef int WSADATA ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CreateThread (int *,int ,int ,scalar_t__,int ,int *) ;
 scalar_t__ ENOTCONN ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAKEWORD (int,int ) ;
 int PIPE_READMODE_BYTE ;
 int PIPE_WAIT ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetNamedPipeHandleState (scalar_t__,int*,int *,int *) ;
 int WSAGetLastError () ;
 scalar_t__ WSAStartup (int ,int *) ;
 int ZEND_ATOL (scalar_t__,char*) ;
 scalar_t__ errno ;
 scalar_t__ fcgi_accept_mutex ;
 int fcgi_free_mgmt_var_cb ;
 int fcgi_mgmt_vars ;
 int fcgi_set_mgmt_var (char*,int,char*,int) ;
 int fcgi_setup_signals () ;
 int fcgi_shutdown_thread ;
 int fprintf (int ,char*,int) ;
 char* getenv (char*) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int is_fastcgi ;
 int is_initialized ;
 int stderr ;
 int zend_hash_init (int *,int,int *,int ,int) ;

int fcgi_init(void)
{
 if (!is_initialized) {

  sa_t sa;
  socklen_t len = sizeof(sa);

  zend_hash_init(&fcgi_mgmt_vars, 8, ((void*)0), fcgi_free_mgmt_var_cb, 1);
  fcgi_set_mgmt_var("FCGI_MPXS_CONNS", sizeof("FCGI_MPXS_CONNS")-1, "0", sizeof("0")-1);

  is_initialized = 1;
  errno = 0;
  if (getpeername(0, (struct sockaddr *)&sa, &len) != 0 && errno == ENOTCONN) {
   fcgi_setup_signals();
   return is_fastcgi = 1;
  } else {
   return is_fastcgi = 0;
  }

 }
 return is_fastcgi;
}
