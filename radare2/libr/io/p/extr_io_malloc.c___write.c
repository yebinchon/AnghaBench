
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 scalar_t__ _io_malloc_buf (TYPE_1__*) ;
 scalar_t__ _io_malloc_off (TYPE_1__*) ;
 int _io_malloc_set_off (TYPE_1__*,scalar_t__) ;
 scalar_t__ _io_malloc_sz (TYPE_1__*) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 if (!fd || !buf || count < 0 || !fd->data) {
  return -1;
 }
 if (_io_malloc_off (fd) > _io_malloc_sz (fd)) {
  return -1;
 }
 if (_io_malloc_off (fd) + count > _io_malloc_sz (fd)) {
  count -= (_io_malloc_off (fd) + count -_io_malloc_sz (fd));
 }
 if (count > 0) {
  memcpy (_io_malloc_buf (fd) + _io_malloc_off (fd), buf, count);
  _io_malloc_set_off (fd, _io_malloc_off (fd) + count);
  return count;
 }
 return -1;
}
