
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct fpm_worker_pool_s {int listen_address_domain; } ;


 int FPM_GET_USE_SOCKET ;
 int FPM_STORE_USE_SOCKET ;
 int fpm_sockets_hash_op (int,struct sockaddr*,int ,int ,int ) ;
 int fpm_sockets_new_listening_socket (struct fpm_worker_pool_s*,struct sockaddr*,int) ;

__attribute__((used)) static int fpm_sockets_get_listening_socket(struct fpm_worker_pool_s *wp, struct sockaddr *sa, int socklen)
{
 int sock;

 sock = fpm_sockets_hash_op(0, sa, 0, wp->listen_address_domain, FPM_GET_USE_SOCKET);
 if (sock >= 0) {
  return sock;
 }

 sock = fpm_sockets_new_listening_socket(wp, sa, socklen);
 fpm_sockets_hash_op(sock, sa, 0, wp->listen_address_domain, FPM_STORE_USE_SOCKET);

 return sock;
}
