
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_UNIX ;
 int SOCK_SEQPACKET ;
 int assert (int) ;
 int bind (int,struct sockaddr*,int) ;
 int listen (int,int) ;
 int snprintf (int ,int,char*,char const*) ;
 int socket (int ,int ,int ) ;
 int unlink (char const*) ;

int ipc_bind(const char* socket_path) {
  int err;

  unlink(socket_path);

  int sock = socket(AF_UNIX, SOCK_SEQPACKET, 0);
  struct sockaddr_un addr = {
    .sun_family = AF_UNIX,
  };
  snprintf(addr.sun_path, sizeof(addr.sun_path), "%s", socket_path);
  err = bind(sock, (struct sockaddr *)&addr, sizeof(addr));
  assert(err == 0);

  err = listen(sock, 3);
  assert(err == 0);

  return sock;
}
