
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;





 scalar_t__ _io_malloc_off (TYPE_1__*) ;
 int _io_malloc_set_off (TYPE_1__*,scalar_t__) ;
 scalar_t__ _io_malloc_sz (TYPE_1__*) ;

__attribute__((used)) static ut64 __lseek(RIO* io, RIODesc *fd, ut64 offset, int whence) {
 ut64 r_offset = offset;
 if (!fd || !fd->data) {
  return offset;
 }
 ut32 mallocsz = _io_malloc_sz (fd);
 switch (whence) {
 case 128:
  r_offset = (offset <= mallocsz) ? offset : mallocsz;
  break;
 case 130:
  r_offset = (_io_malloc_off (fd) + offset <= mallocsz ) ? _io_malloc_off (fd) + offset : mallocsz;
  break;
 case 129:
  r_offset = _io_malloc_sz (fd);
  break;
 }
 _io_malloc_set_off (fd, r_offset);
 return r_offset;
}
