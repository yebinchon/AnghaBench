
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int sin_addr; } ;
struct TYPE_12__ {scalar_t__ sa_family; } ;
struct TYPE_11__ {int sin6_addr; } ;
struct TYPE_16__ {TYPE_6__ sa_inet; TYPE_4__ sa; TYPE_3__ sa_inet6; } ;
struct TYPE_13__ {char sin6_addr; } ;
struct TYPE_10__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {char sin_addr; } ;
struct TYPE_15__ {TYPE_5__ sa_inet6; TYPE_2__ sa; TYPE_1__ sa_inet; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (char*) ;
 TYPE_8__* allowed_clients ;
 TYPE_7__ client_sa ;
 int memcmp (char*,int *,int) ;

__attribute__((used)) static int fcgi_is_allowed() {
 int i;

 if (client_sa.sa.sa_family == AF_UNIX) {
  return 1;
 }
 if (!allowed_clients) {
  return 1;
 }
 if (client_sa.sa.sa_family == AF_INET) {
  for (i = 0; allowed_clients[i].sa.sa_family ; i++) {
   if (allowed_clients[i].sa.sa_family == AF_INET
    && !memcmp(&client_sa.sa_inet.sin_addr, &allowed_clients[i].sa_inet.sin_addr, 4)) {
    return 1;
   }
  }
 }
 return 0;
}
