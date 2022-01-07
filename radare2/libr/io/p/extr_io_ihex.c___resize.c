
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int rbuf; } ;
typedef TYPE_1__ Rihex ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int r_buf_resize (int ,int ) ;

__attribute__((used)) static bool __resize(RIO *io, RIODesc *fd, ut64 size) {
 if (!fd) {
  return 0;
 }
 Rihex *rih = fd->data;
 if (rih) {
  return r_buf_resize (rih->rbuf, size);
 }
 return 0;
}
