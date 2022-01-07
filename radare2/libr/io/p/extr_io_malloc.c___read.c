
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut32 ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 scalar_t__ _io_malloc_buf (TYPE_1__*) ;
 scalar_t__ _io_malloc_off (TYPE_1__*) ;
 scalar_t__ _io_malloc_sz (TYPE_1__*) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 memset (buf, 0xff, count);
 if (!fd || !fd->data) {
  return -1;
 }
 ut32 mallocsz = _io_malloc_sz (fd);
 if (_io_malloc_off (fd) > mallocsz) {
  return -1;
 }
 if (_io_malloc_off (fd) + count >= mallocsz) {
  count = mallocsz - _io_malloc_off (fd);
 }
 memcpy (buf, _io_malloc_buf (fd) + _io_malloc_off (fd), count);
 return count;
}
