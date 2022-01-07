
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin_port; int sin_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {int sin6_addr; } ;
union socket_address {TYPE_3__ sin; TYPE_2__ sa; TYPE_1__ sin6; } ;
typedef size_t socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 char* inet_ntoa (int ) ;
 int * inet_ntop (scalar_t__,void*,char*,size_t) ;
 int memset (char*,int ,size_t) ;
 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,...) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;

int mg_sock_addr_to_str(const union socket_address *sa, char *buf, size_t len,
                        int flags) {
  int is_v6;
  if (buf == ((void*)0) || len <= 0) return 0;
  memset(buf, 0, len);



  is_v6 = 0;

  if (flags & MG_SOCK_STRINGIFY_IP) {
    char *addr_str = inet_ntoa(sa->sin.sin_addr);
    if (addr_str != ((void*)0)) {
      strncpy(buf, inet_ntoa(sa->sin.sin_addr), len - 1);
    } else {
      goto cleanup;
    }





  }
  if (flags & MG_SOCK_STRINGIFY_PORT) {
    int port = ntohs(sa->sin.sin_port);
    if (flags & MG_SOCK_STRINGIFY_IP) {
      int buf_len = strlen(buf);
      snprintf(buf + buf_len, len - (buf_len + 1), "%s:%d", (is_v6 ? "]" : ""),
               port);
    } else {
      snprintf(buf, len, "%d", port);
    }
  }

  return strlen(buf);

cleanup:
  *buf = '\0';
  return 0;
}
