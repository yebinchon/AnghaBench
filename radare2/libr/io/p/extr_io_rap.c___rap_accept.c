
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int client; } ;
typedef TYPE_1__ RIORap ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int r_socket_new_from_fd (int) ;

__attribute__((used)) static bool __rap_accept(RIO *io, RIODesc *desc, int fd) {
 RIORap *rap = desc? desc->data: ((void*)0);
 if (rap && fd != -1) {
  rap->client = r_socket_new_from_fd (fd);
  return 1;
 }
 return 0;
}
