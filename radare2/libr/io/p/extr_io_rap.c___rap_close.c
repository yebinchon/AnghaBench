
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; TYPE_1__* data; } ;
struct TYPE_7__ {scalar_t__ client; scalar_t__ fd; } ;
typedef TYPE_1__ RIORap ;
typedef TYPE_2__ RIODesc ;


 int * RIORAP_FD (TYPE_2__*) ;
 scalar_t__ RIORAP_IS_VALID (TYPE_2__*) ;
 int R_FREE (TYPE_1__*) ;
 int eprintf (char*) ;
 int r_socket_close (scalar_t__) ;

__attribute__((used)) static int __rap_close(RIODesc *fd) {
 int ret = -1;
 if (RIORAP_IS_VALID (fd)) {
  if (RIORAP_FD (fd) != ((void*)0)) {
   RIORap *r = fd->data;
   if (r && fd->fd != -1) {
    if (r->fd) {
     (void)r_socket_close (r->fd);
    }
    if (r->client) {
     ret = r_socket_close (r->client);
    }
    R_FREE (r);
   }
  }
 } else {
  eprintf ("__rap_close: fdesc is not a r_io_rap plugin\n");
 }
 return ret;
}
