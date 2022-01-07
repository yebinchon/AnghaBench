
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int listening_socket; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int ZLOG_WARNING ;
 int close (int ) ;
 int errno ;
 TYPE_1__ fpm_globals ;
 int fpm_php_soft_quit () ;
 scalar_t__ socket (int ,int ,int ) ;
 int zlog (int ,char*) ;

__attribute__((used)) static void sig_soft_quit(int signo)
{
 int saved_errno = errno;


 close(fpm_globals.listening_socket);
 if (0 > socket(AF_UNIX, SOCK_STREAM, 0)) {
  zlog(ZLOG_WARNING, "failed to create a new socket");
 }
 fpm_php_soft_quit();
 errno = saved_errno;
}
