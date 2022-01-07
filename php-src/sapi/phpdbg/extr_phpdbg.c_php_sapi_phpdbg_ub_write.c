
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHPDBG_G (int ) ;
 int PHPDBG_IS_INTERACTIVE ;
 int P_STDOUT ;
 int flags ;
 size_t phpdbg_script (int ,char*,int,char const*) ;
 int send (int,char const*,size_t,int ) ;
 int socket_fd ;

__attribute__((used)) static inline size_t php_sapi_phpdbg_ub_write(const char *message, size_t length)
{
 if (PHPDBG_G(socket_fd) != -1 && !(PHPDBG_G(flags) & PHPDBG_IS_INTERACTIVE)) {
  send(PHPDBG_G(socket_fd), message, length, 0);
 }
 return phpdbg_script(P_STDOUT, "%.*s", (int) length, message);
}
