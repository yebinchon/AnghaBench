
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef int RIOMMapFileObj ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 int r_io_mmap_truncate (int *,int ) ;

__attribute__((used)) static bool __resize(RIO *io, RIODesc *fd, ut64 size) {
 if (!fd || !fd->data) {
  return -1;
 }
 return r_io_mmap_truncate ((RIOMMapFileObj*)fd->data, size);
}
