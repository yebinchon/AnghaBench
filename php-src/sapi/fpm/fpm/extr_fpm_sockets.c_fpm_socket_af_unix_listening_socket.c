
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_un {int sun_family; int sun_path; } ;
struct sockaddr {int dummy; } ;
struct fpm_worker_pool_s {TYPE_1__* config; } ;
typedef int sa_un ;
struct TYPE_2__ {int listen_address; } ;


 int AF_UNIX ;
 int fpm_sockets_get_listening_socket (struct fpm_worker_pool_s*,struct sockaddr*,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int fpm_socket_af_unix_listening_socket(struct fpm_worker_pool_s *wp)
{
 struct sockaddr_un sa_un;

 memset(&sa_un, 0, sizeof(sa_un));
 strlcpy(sa_un.sun_path, wp->config->listen_address, sizeof(sa_un.sun_path));
 sa_un.sun_family = AF_UNIX;
 return fpm_sockets_get_listening_socket(wp, (struct sockaddr *) &sa_un, sizeof(struct sockaddr_un));
}
