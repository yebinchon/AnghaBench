
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 int R_MIN (scalar_t__,scalar_t__) ;
 int _io_malloc_buf (TYPE_1__*) ;
 scalar_t__ _io_malloc_off (TYPE_1__*) ;
 int _io_malloc_set_buf (TYPE_1__*,int *) ;
 int _io_malloc_set_sz (TYPE_1__*,scalar_t__) ;
 scalar_t__ _io_malloc_sz (TYPE_1__*) ;
 int free (int ) ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static bool __resize(RIO *io, RIODesc *fd, ut64 count) {
 ut8 * new_buf = ((void*)0);
 if (!fd || !fd->data || count == 0) {
  return 0;
 }
 ut32 mallocsz = _io_malloc_sz (fd);
 if (_io_malloc_off (fd) > mallocsz) {
  return 0;
 }
 new_buf = malloc (count);
 if (!new_buf) {
  return -1;
 }
 memcpy (new_buf, _io_malloc_buf (fd), R_MIN (count, mallocsz));
 if (count > mallocsz) {
  memset (new_buf + mallocsz, 0, count - mallocsz);
 }
 free (_io_malloc_buf (fd));
 _io_malloc_set_buf (fd, new_buf);
 _io_malloc_set_sz (fd, count);
 return 1;
}
